import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart' as drift;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../database/database.dart';
import '../main.dart';

part 'karaoke_view_model.g.dart';

@riverpod
class LibraryViewModel extends _$LibraryViewModel {
  @override
  Future<List<LibrarySong>> build() async => database.getAllLibrarySongs();

  Future<bool> addSong({required String title, required String originalSinger, required String songNumber, required String machineBrand, required String highestNote}) async {
    final songs = state.value ?? [];
    if (songs.any((s) => s.title == title && s.originalSinger == originalSinger && s.songNumber == songNumber && s.machineBrand == machineBrand && s.highestNote == highestNote)) return false;
    await database.insertLibrarySong(LibrarySongsCompanion.insert(id: DateTime.now().millisecondsSinceEpoch.toString(), title: title, originalSinger: originalSinger, songNumber: songNumber, machineBrand: machineBrand, highestNote: highestNote));
    ref.invalidateSelf();
    return true;
  }

  Future<void> updateSong(LibrarySong song) async {
    await database.updateLibrarySong(song);
    ref.invalidateSelf();
  }

  Future<void> deleteSongWithUndo(BuildContext context, LibrarySong song) async {
    final entriesBackup = await (database.select(database.sessionEntries)..where((t) => t.librarySongId.equals(song.id))).get();
    await database.deleteLibrarySong(song.id);
    ref.invalidateSelf();
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('"${song.title}" 삭제됨.'), duration: const Duration(seconds: 5), action: SnackBarAction(label: '복원', onPressed: () async {
      await database.insertLibrarySong(song.toCompanion(false));
      for (var entry in entriesBackup) { await database.insertSessionEntry(entry.toCompanion(false)); }
      ref.invalidateSelf();
      ref.invalidate(sessionViewModelProvider);
    })));
  }

  Future<void> toggleHighlight(LibrarySong song) async {
    await database.updateSongHighlight(song.id, !song.isHighlighted);
    ref.invalidateSelf();
  }
}

@riverpod
class SessionViewModel extends _$SessionViewModel {
  @override
  Future<List<Session>> build() async => database.getAllSessions();

  Future<void> addSession(DateTime date) async {
    await database.insertSession(SessionsCompanion.insert(id: DateTime.now().millisecondsSinceEpoch.toString(), date: date));
    ref.invalidateSelf();
  }

  Future<void> updateSessionInfo(Session session) async {
    await database.updateSession(session);
    ref.invalidateSelf();
  }

  Future<void> deleteSession(String sessionId) async {
    await database.deleteSession(sessionId);
    ref.invalidateSelf();
  }
}

@riverpod
class PerformerViewModel extends _$PerformerViewModel {
  @override
  Future<List<Performer>> build() async => database.getAllPerformers();

  Future<void> addPerformer(String name) async {
    await database.insertPerformer(PerformersCompanion.insert(id: DateTime.now().millisecondsSinceEpoch.toString(), name: name));
    ref.invalidateSelf();
  }

  Future<void> removePerformer(Performer performer) async {
    await database.clearPerformerNameFromEntries(performer.name);
    await database.deletePerformer(performer.id);
    ref.invalidateSelf();
  }
}

@riverpod
class SessionDetailViewModel extends _$SessionDetailViewModel {
  @override
  Future<List<Map<String, dynamic>>> build(String sessionId) async {
    final results = await database.getSessionWithSongs(sessionId).get();
    return results.map((row) => {'entry': row.readTable(database.sessionEntries), 'song': row.readTable(database.librarySongs)}).toList();
  }

  Future<void> addSongToSession(LibrarySong song) async {
    final current = state.value ?? [];
    await database.insertSessionEntry(SessionEntriesCompanion.insert(id: DateTime.now().millisecondsSinceEpoch.toString(), sessionId: sessionId, librarySongId: song.id, sortOrder: drift.Value(current.length)));
    ref.invalidateSelf();
    ref.invalidate(sessionViewModelProvider);
  }

  Future<void> removeEntry(String entryId) async {
    await database.deleteSessionEntry(entryId);
    ref.invalidateSelf();
    ref.invalidate(sessionViewModelProvider);
  }

  Future<void> updatePerformer(String entryId, String name) async {
    await database.updateEntryPerformer(entryId, name);
    ref.invalidateSelf();
  }

  Future<void> reorderEntries(int oldIdx, int newIdx) async {
    final list = List<Map<String, dynamic>>.from(state.value ?? []);
    if (newIdx > oldIdx) newIdx -= 1;
    final item = list.removeAt(oldIdx);
    list.insert(newIdx, item);
    for (int i = 0; i < list.length; i++) {
      final entry = list[i]['entry'] as SessionEntry;
      await database.updateEntryOrder(entry.id, i);
    }
    ref.invalidateSelf();
  }
}

@riverpod
class DataManagementViewModel extends _$DataManagementViewModel {
  @override
  void build() {}

  Future<void> exportData() async {
    final songs = await database.getAllLibrarySongs();
    final sessions = await database.getAllSessions();
    final allEntries = await database.getAllSessionEntries();
    final performers = await database.getAllPerformers();

    final songIds = songs.map((s) => s.id).toSet();
    final sessionIds = sessions.map((s) => s.id).toSet();

    List<SessionEntry> validEntries = allEntries
        .where((e) => songIds.contains(e.librarySongId) && sessionIds.contains(e.sessionId))
        .toList();

    validEntries.sort((a, b) {
      int sComp = a.sessionId.compareTo(b.sessionId);
      if (sComp != 0) return sComp;
      return a.sortOrder.compareTo(b.sortOrder);
    });

    List<List<dynamic>> rows = [];
    rows.add(['#TYPE', 'ID(수정금지)', 'DATA1', 'DATA2', 'DATA3', 'DATA4', 'DATA5', 'DATA6']);

    for (var s in songs) {
      rows.add(['SONG', 'ID_${s.id}', s.title, s.originalSinger, s.songNumber, s.machineBrand, s.highestNote, s.isHighlighted ? 1 : 0]);
    }
    for (var s in sessions) {
      rows.add(['SESS', 'ID_${s.id}', DateFormat('yyyy-MM-dd HH:mm:ss').format(s.date), s.title, s.rating, s.memo]);
    }

    String? lastSessId;
    int displayIdx = 1;
    for (var e in validEntries) {
      if (lastSessId != e.sessionId) {
        displayIdx = 1;
        lastSessId = e.sessionId;
      }
      rows.add(['ENTR', 'ID_${e.id}', 'ID_${e.sessionId}', 'ID_${e.librarySongId}', e.performer, displayIdx]);
      displayIdx++;
    }

    for (var p in performers) {
      rows.add(['PERF', 'ID_${p.id}', p.name]);
    }

    String csvData = const ListToCsvConverter().convert(rows);
    final directory = await getApplicationDocumentsDirectory();
    final timestamp = DateFormat('yyMMdd_HHmmss').format(DateTime.now());
    final file = File('${directory.path}/karaoke_backup_$timestamp.csv');
    final bom = '\uFEFF';
    await file.writeAsString(bom + csvData, encoding: utf8);
    await Share.shareXFiles([XFile(file.path, mimeType: 'text/csv')], subject: '노래방 일지 백업_$timestamp');
  }

  Future<bool> importData() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['csv']);
      if (result == null || result.files.single.path == null) return false;

      File file = File(result.files.single.path!);
      String content = await file.readAsString(encoding: utf8);
      if (content.startsWith('\uFEFF')) content = content.substring(1);

      List<List<dynamic>> rows = const CsvToListConverter().convert(content);
      if (rows.isEmpty) return false;

      await database.clearAllData();

      for (var row in rows) {
        if (row.isEmpty || row[0].toString().startsWith('#')) continue;

        String type = row[0].toString();
        String id = row[1].toString().replaceAll('ID_', '');

        if (type == 'SONG') {
          await database.insertLibrarySong(LibrarySongsCompanion.insert(id: id, title: row[2].toString(), originalSinger: row[3].toString(), songNumber: row[4].toString(), machineBrand: row[5].toString(), highestNote: row[6].toString(), isHighlighted: drift.Value(row[7].toString() == '1')));
        } else if (type == 'SESS') {
          String dateStr = row[2].toString();
          DateTime? sessionDate = DateTime.tryParse(dateStr);
          if (sessionDate == null) {
            try { sessionDate = DateFormat('yyyy-MM-dd HH:mm').parse(dateStr); } catch (_) {
              try { sessionDate = DateFormat('yyyy-MM-dd H:mm').parse(dateStr); } catch (_) {
                sessionDate = DateTime.now();
              }
            }
          }
          await database.insertSession(SessionsCompanion.insert(id: id, date: sessionDate!, title: drift.Value(row[3].toString()), rating: drift.Value(int.tryParse(row[4].toString()) ?? 0), memo: drift.Value(row[5].toString())));
        } else if (type == 'ENTR') {
          await database.insertSessionEntry(SessionEntriesCompanion.insert(id: id, sessionId: row[2].toString().replaceAll('ID_', ''), librarySongId: row[3].toString().replaceAll('ID_', ''), performer: drift.Value(row[4].toString()), sortOrder: drift.Value((int.tryParse(row[5].toString()) ?? 1) - 1)));
        } else if (type == 'PERF') {
          await database.insertPerformer(PerformersCompanion.insert(id: id, name: row[2].toString()));
        }
      }

      ref.invalidate(libraryViewModelProvider);
      ref.invalidate(sessionViewModelProvider);
      ref.invalidate(performerViewModelProvider);
      return true;
    } catch (e) {
      return false;
    }
  }
}

@riverpod
class SongRankingViewModel extends _$SongRankingViewModel {
  @override
  Future<List<Map<String, dynamic>>> build() async {
    final results = await database.getAllEntriesWithSongs().get();
    final Map<String, Map<String, dynamic>> aggregation = {};

    for (var row in results) {
      final song = row.readTable(database.librarySongs);
      final key = '${song.title}_${song.originalSinger}';

      if (!aggregation.containsKey(key)) {
        aggregation[key] = {
          'title': song.title,
          'singer': song.originalSinger,
          'count': 0,
        };
      }
      aggregation[key]!['count']++;
    }

    final sortedList = aggregation.values.toList();
    sortedList.sort((a, b) {
      int countCompare = b['count'].compareTo(a['count']);
      if (countCompare != 0) return countCompare;
      return a['title'].compareTo(b['title']);
    });

    return sortedList;
  }
}