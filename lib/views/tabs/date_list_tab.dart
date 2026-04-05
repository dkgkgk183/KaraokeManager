import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../viewmodels/karaoke_view_model.dart';
import '../../database/database.dart';
import '../session_detail_screen.dart';

class DateListTab extends ConsumerWidget {
  const DateListTab({super.key});

  void _showMemoDialog(BuildContext context, WidgetRef ref, Session session) {
    final ctrl = TextEditingController(text: session.memo);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: const Text('세션 메모'),
      content: TextField(controller: ctrl, decoration: const InputDecoration(hintText: '메모를 입력하세요...')),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('취소')),
        ElevatedButton(onPressed: () {
          ref.read(sessionViewModelProvider.notifier).updateSessionInfo(session.copyWith(memo: ctrl.text));
          Navigator.pop(context);
        }, child: const Text('저장')),
      ],
    ));
  }

  Widget _buildStarRating(int rating) {
    double starCount = rating / 2.0;
    int fullStars = starCount.floor();
    bool hasHalfStar = (starCount - fullStars) >= 0.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return const Icon(Icons.star, color: Colors.orange, size: 14);
        } else if (index == fullStars && hasHalfStar) {
          return const Icon(Icons.star_half, color: Colors.orange, size: 14);
        } else {
          return const Icon(Icons.star_border, color: Colors.orange, size: 14);
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessionsAsync = ref.watch(sessionViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('방문 기록')),
      body: sessionsAsync.when(
        data: (sessions) => ListView.builder(itemCount: sessions.length, itemBuilder: (context, index) {
          final session = sessions[index];
          final entries = ref.watch(sessionDetailViewModelProvider(session.id)).value?.length ?? 0;
          return ListTile(
            title: Row(children: [
              Text(DateFormat('yyyy년 M월 d일').format(session.date), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              const SizedBox(width: 8),
              if (session.rating > 0) _buildStarRating(session.rating),
              const Spacer(),
              Text('$entries곡', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
            ]),
            subtitle: session.memo.isNotEmpty ? Text(session.memo, style: const TextStyle(fontSize: 12, color: Colors.blueGrey), maxLines: 1, overflow: TextOverflow.ellipsis) : null,
            trailing: const Icon(Icons.chevron_right, size: 18),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SessionDetailScreen(session: session))),
            onLongPress: () => _showMemoDialog(context, ref, session),
          );
        }),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text('에러: $e')),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final p = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2100));
        if (p != null) ref.read(sessionViewModelProvider.notifier).addSession(p);
      }, child: const Icon(Icons.add)),
    );
  }
}