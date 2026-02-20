// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LibrarySongsTable extends LibrarySongs
    with TableInfo<$LibrarySongsTable, LibrarySong> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LibrarySongsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalSingerMeta = const VerificationMeta(
    'originalSinger',
  );
  @override
  late final GeneratedColumn<String> originalSinger = GeneratedColumn<String>(
    'original_singer',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _songNumberMeta = const VerificationMeta(
    'songNumber',
  );
  @override
  late final GeneratedColumn<String> songNumber = GeneratedColumn<String>(
    'song_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _machineBrandMeta = const VerificationMeta(
    'machineBrand',
  );
  @override
  late final GeneratedColumn<String> machineBrand = GeneratedColumn<String>(
    'machine_brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _highestNoteMeta = const VerificationMeta(
    'highestNote',
  );
  @override
  late final GeneratedColumn<String> highestNote = GeneratedColumn<String>(
    'highest_note',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isHighlightedMeta = const VerificationMeta(
    'isHighlighted',
  );
  @override
  late final GeneratedColumn<bool> isHighlighted = GeneratedColumn<bool>(
    'is_highlighted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_highlighted" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    originalSinger,
    songNumber,
    machineBrand,
    highestNote,
    isHighlighted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'library_songs';
  @override
  VerificationContext validateIntegrity(
    Insertable<LibrarySong> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('original_singer')) {
      context.handle(
        _originalSingerMeta,
        originalSinger.isAcceptableOrUnknown(
          data['original_singer']!,
          _originalSingerMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalSingerMeta);
    }
    if (data.containsKey('song_number')) {
      context.handle(
        _songNumberMeta,
        songNumber.isAcceptableOrUnknown(data['song_number']!, _songNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_songNumberMeta);
    }
    if (data.containsKey('machine_brand')) {
      context.handle(
        _machineBrandMeta,
        machineBrand.isAcceptableOrUnknown(
          data['machine_brand']!,
          _machineBrandMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_machineBrandMeta);
    }
    if (data.containsKey('highest_note')) {
      context.handle(
        _highestNoteMeta,
        highestNote.isAcceptableOrUnknown(
          data['highest_note']!,
          _highestNoteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_highestNoteMeta);
    }
    if (data.containsKey('is_highlighted')) {
      context.handle(
        _isHighlightedMeta,
        isHighlighted.isAcceptableOrUnknown(
          data['is_highlighted']!,
          _isHighlightedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LibrarySong map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LibrarySong(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      originalSinger: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_singer'],
      )!,
      songNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}song_number'],
      )!,
      machineBrand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}machine_brand'],
      )!,
      highestNote: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}highest_note'],
      )!,
      isHighlighted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_highlighted'],
      )!,
    );
  }

  @override
  $LibrarySongsTable createAlias(String alias) {
    return $LibrarySongsTable(attachedDatabase, alias);
  }
}

class LibrarySong extends DataClass implements Insertable<LibrarySong> {
  final String id;
  final String title;
  final String originalSinger;
  final String songNumber;
  final String machineBrand;
  final String highestNote;
  final bool isHighlighted;
  const LibrarySong({
    required this.id,
    required this.title,
    required this.originalSinger,
    required this.songNumber,
    required this.machineBrand,
    required this.highestNote,
    required this.isHighlighted,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['original_singer'] = Variable<String>(originalSinger);
    map['song_number'] = Variable<String>(songNumber);
    map['machine_brand'] = Variable<String>(machineBrand);
    map['highest_note'] = Variable<String>(highestNote);
    map['is_highlighted'] = Variable<bool>(isHighlighted);
    return map;
  }

  LibrarySongsCompanion toCompanion(bool nullToAbsent) {
    return LibrarySongsCompanion(
      id: Value(id),
      title: Value(title),
      originalSinger: Value(originalSinger),
      songNumber: Value(songNumber),
      machineBrand: Value(machineBrand),
      highestNote: Value(highestNote),
      isHighlighted: Value(isHighlighted),
    );
  }

  factory LibrarySong.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LibrarySong(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      originalSinger: serializer.fromJson<String>(json['originalSinger']),
      songNumber: serializer.fromJson<String>(json['songNumber']),
      machineBrand: serializer.fromJson<String>(json['machineBrand']),
      highestNote: serializer.fromJson<String>(json['highestNote']),
      isHighlighted: serializer.fromJson<bool>(json['isHighlighted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'originalSinger': serializer.toJson<String>(originalSinger),
      'songNumber': serializer.toJson<String>(songNumber),
      'machineBrand': serializer.toJson<String>(machineBrand),
      'highestNote': serializer.toJson<String>(highestNote),
      'isHighlighted': serializer.toJson<bool>(isHighlighted),
    };
  }

  LibrarySong copyWith({
    String? id,
    String? title,
    String? originalSinger,
    String? songNumber,
    String? machineBrand,
    String? highestNote,
    bool? isHighlighted,
  }) => LibrarySong(
    id: id ?? this.id,
    title: title ?? this.title,
    originalSinger: originalSinger ?? this.originalSinger,
    songNumber: songNumber ?? this.songNumber,
    machineBrand: machineBrand ?? this.machineBrand,
    highestNote: highestNote ?? this.highestNote,
    isHighlighted: isHighlighted ?? this.isHighlighted,
  );
  LibrarySong copyWithCompanion(LibrarySongsCompanion data) {
    return LibrarySong(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      originalSinger: data.originalSinger.present
          ? data.originalSinger.value
          : this.originalSinger,
      songNumber: data.songNumber.present
          ? data.songNumber.value
          : this.songNumber,
      machineBrand: data.machineBrand.present
          ? data.machineBrand.value
          : this.machineBrand,
      highestNote: data.highestNote.present
          ? data.highestNote.value
          : this.highestNote,
      isHighlighted: data.isHighlighted.present
          ? data.isHighlighted.value
          : this.isHighlighted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LibrarySong(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('originalSinger: $originalSinger, ')
          ..write('songNumber: $songNumber, ')
          ..write('machineBrand: $machineBrand, ')
          ..write('highestNote: $highestNote, ')
          ..write('isHighlighted: $isHighlighted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    originalSinger,
    songNumber,
    machineBrand,
    highestNote,
    isHighlighted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LibrarySong &&
          other.id == this.id &&
          other.title == this.title &&
          other.originalSinger == this.originalSinger &&
          other.songNumber == this.songNumber &&
          other.machineBrand == this.machineBrand &&
          other.highestNote == this.highestNote &&
          other.isHighlighted == this.isHighlighted);
}

class LibrarySongsCompanion extends UpdateCompanion<LibrarySong> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> originalSinger;
  final Value<String> songNumber;
  final Value<String> machineBrand;
  final Value<String> highestNote;
  final Value<bool> isHighlighted;
  final Value<int> rowid;
  const LibrarySongsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.originalSinger = const Value.absent(),
    this.songNumber = const Value.absent(),
    this.machineBrand = const Value.absent(),
    this.highestNote = const Value.absent(),
    this.isHighlighted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LibrarySongsCompanion.insert({
    required String id,
    required String title,
    required String originalSinger,
    required String songNumber,
    required String machineBrand,
    required String highestNote,
    this.isHighlighted = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       originalSinger = Value(originalSinger),
       songNumber = Value(songNumber),
       machineBrand = Value(machineBrand),
       highestNote = Value(highestNote);
  static Insertable<LibrarySong> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? originalSinger,
    Expression<String>? songNumber,
    Expression<String>? machineBrand,
    Expression<String>? highestNote,
    Expression<bool>? isHighlighted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (originalSinger != null) 'original_singer': originalSinger,
      if (songNumber != null) 'song_number': songNumber,
      if (machineBrand != null) 'machine_brand': machineBrand,
      if (highestNote != null) 'highest_note': highestNote,
      if (isHighlighted != null) 'is_highlighted': isHighlighted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LibrarySongsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? originalSinger,
    Value<String>? songNumber,
    Value<String>? machineBrand,
    Value<String>? highestNote,
    Value<bool>? isHighlighted,
    Value<int>? rowid,
  }) {
    return LibrarySongsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      originalSinger: originalSinger ?? this.originalSinger,
      songNumber: songNumber ?? this.songNumber,
      machineBrand: machineBrand ?? this.machineBrand,
      highestNote: highestNote ?? this.highestNote,
      isHighlighted: isHighlighted ?? this.isHighlighted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (originalSinger.present) {
      map['original_singer'] = Variable<String>(originalSinger.value);
    }
    if (songNumber.present) {
      map['song_number'] = Variable<String>(songNumber.value);
    }
    if (machineBrand.present) {
      map['machine_brand'] = Variable<String>(machineBrand.value);
    }
    if (highestNote.present) {
      map['highest_note'] = Variable<String>(highestNote.value);
    }
    if (isHighlighted.present) {
      map['is_highlighted'] = Variable<bool>(isHighlighted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LibrarySongsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('originalSinger: $originalSinger, ')
          ..write('songNumber: $songNumber, ')
          ..write('machineBrand: $machineBrand, ')
          ..write('highestNote: $highestNote, ')
          ..write('isHighlighted: $isHighlighted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SessionsTable extends Sessions with TableInfo<$SessionsTable, Session> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
    'rating',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
    'memo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [id, date, title, rating, memo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<Session> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    }
    if (data.containsKey('memo')) {
      context.handle(
        _memoMeta,
        memo.isAcceptableOrUnknown(data['memo']!, _memoMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Session map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Session(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rating'],
      )!,
      memo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}memo'],
      )!,
    );
  }

  @override
  $SessionsTable createAlias(String alias) {
    return $SessionsTable(attachedDatabase, alias);
  }
}

class Session extends DataClass implements Insertable<Session> {
  final String id;
  final DateTime date;
  final String title;
  final int rating;
  final String memo;
  const Session({
    required this.id,
    required this.date,
    required this.title,
    required this.rating,
    required this.memo,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['date'] = Variable<DateTime>(date);
    map['title'] = Variable<String>(title);
    map['rating'] = Variable<int>(rating);
    map['memo'] = Variable<String>(memo);
    return map;
  }

  SessionsCompanion toCompanion(bool nullToAbsent) {
    return SessionsCompanion(
      id: Value(id),
      date: Value(date),
      title: Value(title),
      rating: Value(rating),
      memo: Value(memo),
    );
  }

  factory Session.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Session(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      title: serializer.fromJson<String>(json['title']),
      rating: serializer.fromJson<int>(json['rating']),
      memo: serializer.fromJson<String>(json['memo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime>(date),
      'title': serializer.toJson<String>(title),
      'rating': serializer.toJson<int>(rating),
      'memo': serializer.toJson<String>(memo),
    };
  }

  Session copyWith({
    String? id,
    DateTime? date,
    String? title,
    int? rating,
    String? memo,
  }) => Session(
    id: id ?? this.id,
    date: date ?? this.date,
    title: title ?? this.title,
    rating: rating ?? this.rating,
    memo: memo ?? this.memo,
  );
  Session copyWithCompanion(SessionsCompanion data) {
    return Session(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      title: data.title.present ? data.title.value : this.title,
      rating: data.rating.present ? data.rating.value : this.rating,
      memo: data.memo.present ? data.memo.value : this.memo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Session(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('title: $title, ')
          ..write('rating: $rating, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, title, rating, memo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Session &&
          other.id == this.id &&
          other.date == this.date &&
          other.title == this.title &&
          other.rating == this.rating &&
          other.memo == this.memo);
}

class SessionsCompanion extends UpdateCompanion<Session> {
  final Value<String> id;
  final Value<DateTime> date;
  final Value<String> title;
  final Value<int> rating;
  final Value<String> memo;
  final Value<int> rowid;
  const SessionsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.title = const Value.absent(),
    this.rating = const Value.absent(),
    this.memo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SessionsCompanion.insert({
    required String id,
    required DateTime date,
    this.title = const Value.absent(),
    this.rating = const Value.absent(),
    this.memo = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       date = Value(date);
  static Insertable<Session> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<String>? title,
    Expression<int>? rating,
    Expression<String>? memo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (title != null) 'title': title,
      if (rating != null) 'rating': rating,
      if (memo != null) 'memo': memo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SessionsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? date,
    Value<String>? title,
    Value<int>? rating,
    Value<String>? memo,
    Value<int>? rowid,
  }) {
    return SessionsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      memo: memo ?? this.memo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('title: $title, ')
          ..write('rating: $rating, ')
          ..write('memo: $memo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SessionEntriesTable extends SessionEntries
    with TableInfo<$SessionEntriesTable, SessionEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sessionIdMeta = const VerificationMeta(
    'sessionId',
  );
  @override
  late final GeneratedColumn<String> sessionId = GeneratedColumn<String>(
    'session_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _librarySongIdMeta = const VerificationMeta(
    'librarySongId',
  );
  @override
  late final GeneratedColumn<String> librarySongId = GeneratedColumn<String>(
    'library_song_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _performerMeta = const VerificationMeta(
    'performer',
  );
  @override
  late final GeneratedColumn<String> performer = GeneratedColumn<String>(
    'performer',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sessionId,
    librarySongId,
    performer,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'session_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<SessionEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('session_id')) {
      context.handle(
        _sessionIdMeta,
        sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    if (data.containsKey('library_song_id')) {
      context.handle(
        _librarySongIdMeta,
        librarySongId.isAcceptableOrUnknown(
          data['library_song_id']!,
          _librarySongIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_librarySongIdMeta);
    }
    if (data.containsKey('performer')) {
      context.handle(
        _performerMeta,
        performer.isAcceptableOrUnknown(data['performer']!, _performerMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SessionEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SessionEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      sessionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}session_id'],
      )!,
      librarySongId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}library_song_id'],
      )!,
      performer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}performer'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $SessionEntriesTable createAlias(String alias) {
    return $SessionEntriesTable(attachedDatabase, alias);
  }
}

class SessionEntry extends DataClass implements Insertable<SessionEntry> {
  final String id;
  final String sessionId;
  final String librarySongId;
  final String performer;
  final int sortOrder;
  const SessionEntry({
    required this.id,
    required this.sessionId,
    required this.librarySongId,
    required this.performer,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['session_id'] = Variable<String>(sessionId);
    map['library_song_id'] = Variable<String>(librarySongId);
    map['performer'] = Variable<String>(performer);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  SessionEntriesCompanion toCompanion(bool nullToAbsent) {
    return SessionEntriesCompanion(
      id: Value(id),
      sessionId: Value(sessionId),
      librarySongId: Value(librarySongId),
      performer: Value(performer),
      sortOrder: Value(sortOrder),
    );
  }

  factory SessionEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SessionEntry(
      id: serializer.fromJson<String>(json['id']),
      sessionId: serializer.fromJson<String>(json['sessionId']),
      librarySongId: serializer.fromJson<String>(json['librarySongId']),
      performer: serializer.fromJson<String>(json['performer']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'sessionId': serializer.toJson<String>(sessionId),
      'librarySongId': serializer.toJson<String>(librarySongId),
      'performer': serializer.toJson<String>(performer),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  SessionEntry copyWith({
    String? id,
    String? sessionId,
    String? librarySongId,
    String? performer,
    int? sortOrder,
  }) => SessionEntry(
    id: id ?? this.id,
    sessionId: sessionId ?? this.sessionId,
    librarySongId: librarySongId ?? this.librarySongId,
    performer: performer ?? this.performer,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  SessionEntry copyWithCompanion(SessionEntriesCompanion data) {
    return SessionEntry(
      id: data.id.present ? data.id.value : this.id,
      sessionId: data.sessionId.present ? data.sessionId.value : this.sessionId,
      librarySongId: data.librarySongId.present
          ? data.librarySongId.value
          : this.librarySongId,
      performer: data.performer.present ? data.performer.value : this.performer,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SessionEntry(')
          ..write('id: $id, ')
          ..write('sessionId: $sessionId, ')
          ..write('librarySongId: $librarySongId, ')
          ..write('performer: $performer, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, sessionId, librarySongId, performer, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SessionEntry &&
          other.id == this.id &&
          other.sessionId == this.sessionId &&
          other.librarySongId == this.librarySongId &&
          other.performer == this.performer &&
          other.sortOrder == this.sortOrder);
}

class SessionEntriesCompanion extends UpdateCompanion<SessionEntry> {
  final Value<String> id;
  final Value<String> sessionId;
  final Value<String> librarySongId;
  final Value<String> performer;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const SessionEntriesCompanion({
    this.id = const Value.absent(),
    this.sessionId = const Value.absent(),
    this.librarySongId = const Value.absent(),
    this.performer = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SessionEntriesCompanion.insert({
    required String id,
    required String sessionId,
    required String librarySongId,
    this.performer = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       sessionId = Value(sessionId),
       librarySongId = Value(librarySongId);
  static Insertable<SessionEntry> custom({
    Expression<String>? id,
    Expression<String>? sessionId,
    Expression<String>? librarySongId,
    Expression<String>? performer,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sessionId != null) 'session_id': sessionId,
      if (librarySongId != null) 'library_song_id': librarySongId,
      if (performer != null) 'performer': performer,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SessionEntriesCompanion copyWith({
    Value<String>? id,
    Value<String>? sessionId,
    Value<String>? librarySongId,
    Value<String>? performer,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return SessionEntriesCompanion(
      id: id ?? this.id,
      sessionId: sessionId ?? this.sessionId,
      librarySongId: librarySongId ?? this.librarySongId,
      performer: performer ?? this.performer,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (sessionId.present) {
      map['session_id'] = Variable<String>(sessionId.value);
    }
    if (librarySongId.present) {
      map['library_song_id'] = Variable<String>(librarySongId.value);
    }
    if (performer.present) {
      map['performer'] = Variable<String>(performer.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionEntriesCompanion(')
          ..write('id: $id, ')
          ..write('sessionId: $sessionId, ')
          ..write('librarySongId: $librarySongId, ')
          ..write('performer: $performer, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PerformersTable extends Performers
    with TableInfo<$PerformersTable, Performer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PerformersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'performers';
  @override
  VerificationContext validateIntegrity(
    Insertable<Performer> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Performer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Performer(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $PerformersTable createAlias(String alias) {
    return $PerformersTable(attachedDatabase, alias);
  }
}

class Performer extends DataClass implements Insertable<Performer> {
  final String id;
  final String name;
  const Performer({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  PerformersCompanion toCompanion(bool nullToAbsent) {
    return PerformersCompanion(id: Value(id), name: Value(name));
  }

  factory Performer.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Performer(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Performer copyWith({String? id, String? name}) =>
      Performer(id: id ?? this.id, name: name ?? this.name);
  Performer copyWithCompanion(PerformersCompanion data) {
    return Performer(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Performer(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Performer && other.id == this.id && other.name == this.name);
}

class PerformersCompanion extends UpdateCompanion<Performer> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const PerformersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PerformersCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Performer> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PerformersCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? rowid,
  }) {
    return PerformersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PerformersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LibrarySongsTable librarySongs = $LibrarySongsTable(this);
  late final $SessionsTable sessions = $SessionsTable(this);
  late final $SessionEntriesTable sessionEntries = $SessionEntriesTable(this);
  late final $PerformersTable performers = $PerformersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    librarySongs,
    sessions,
    sessionEntries,
    performers,
  ];
}

typedef $$LibrarySongsTableCreateCompanionBuilder =
    LibrarySongsCompanion Function({
      required String id,
      required String title,
      required String originalSinger,
      required String songNumber,
      required String machineBrand,
      required String highestNote,
      Value<bool> isHighlighted,
      Value<int> rowid,
    });
typedef $$LibrarySongsTableUpdateCompanionBuilder =
    LibrarySongsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> originalSinger,
      Value<String> songNumber,
      Value<String> machineBrand,
      Value<String> highestNote,
      Value<bool> isHighlighted,
      Value<int> rowid,
    });

class $$LibrarySongsTableFilterComposer
    extends Composer<_$AppDatabase, $LibrarySongsTable> {
  $$LibrarySongsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalSinger => $composableBuilder(
    column: $table.originalSinger,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get songNumber => $composableBuilder(
    column: $table.songNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get machineBrand => $composableBuilder(
    column: $table.machineBrand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get highestNote => $composableBuilder(
    column: $table.highestNote,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHighlighted => $composableBuilder(
    column: $table.isHighlighted,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LibrarySongsTableOrderingComposer
    extends Composer<_$AppDatabase, $LibrarySongsTable> {
  $$LibrarySongsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalSinger => $composableBuilder(
    column: $table.originalSinger,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get songNumber => $composableBuilder(
    column: $table.songNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get machineBrand => $composableBuilder(
    column: $table.machineBrand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get highestNote => $composableBuilder(
    column: $table.highestNote,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHighlighted => $composableBuilder(
    column: $table.isHighlighted,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LibrarySongsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LibrarySongsTable> {
  $$LibrarySongsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get originalSinger => $composableBuilder(
    column: $table.originalSinger,
    builder: (column) => column,
  );

  GeneratedColumn<String> get songNumber => $composableBuilder(
    column: $table.songNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get machineBrand => $composableBuilder(
    column: $table.machineBrand,
    builder: (column) => column,
  );

  GeneratedColumn<String> get highestNote => $composableBuilder(
    column: $table.highestNote,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isHighlighted => $composableBuilder(
    column: $table.isHighlighted,
    builder: (column) => column,
  );
}

class $$LibrarySongsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LibrarySongsTable,
          LibrarySong,
          $$LibrarySongsTableFilterComposer,
          $$LibrarySongsTableOrderingComposer,
          $$LibrarySongsTableAnnotationComposer,
          $$LibrarySongsTableCreateCompanionBuilder,
          $$LibrarySongsTableUpdateCompanionBuilder,
          (
            LibrarySong,
            BaseReferences<_$AppDatabase, $LibrarySongsTable, LibrarySong>,
          ),
          LibrarySong,
          PrefetchHooks Function()
        > {
  $$LibrarySongsTableTableManager(_$AppDatabase db, $LibrarySongsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LibrarySongsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LibrarySongsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LibrarySongsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> originalSinger = const Value.absent(),
                Value<String> songNumber = const Value.absent(),
                Value<String> machineBrand = const Value.absent(),
                Value<String> highestNote = const Value.absent(),
                Value<bool> isHighlighted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LibrarySongsCompanion(
                id: id,
                title: title,
                originalSinger: originalSinger,
                songNumber: songNumber,
                machineBrand: machineBrand,
                highestNote: highestNote,
                isHighlighted: isHighlighted,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String originalSinger,
                required String songNumber,
                required String machineBrand,
                required String highestNote,
                Value<bool> isHighlighted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LibrarySongsCompanion.insert(
                id: id,
                title: title,
                originalSinger: originalSinger,
                songNumber: songNumber,
                machineBrand: machineBrand,
                highestNote: highestNote,
                isHighlighted: isHighlighted,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LibrarySongsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LibrarySongsTable,
      LibrarySong,
      $$LibrarySongsTableFilterComposer,
      $$LibrarySongsTableOrderingComposer,
      $$LibrarySongsTableAnnotationComposer,
      $$LibrarySongsTableCreateCompanionBuilder,
      $$LibrarySongsTableUpdateCompanionBuilder,
      (
        LibrarySong,
        BaseReferences<_$AppDatabase, $LibrarySongsTable, LibrarySong>,
      ),
      LibrarySong,
      PrefetchHooks Function()
    >;
typedef $$SessionsTableCreateCompanionBuilder =
    SessionsCompanion Function({
      required String id,
      required DateTime date,
      Value<String> title,
      Value<int> rating,
      Value<String> memo,
      Value<int> rowid,
    });
typedef $$SessionsTableUpdateCompanionBuilder =
    SessionsCompanion Function({
      Value<String> id,
      Value<DateTime> date,
      Value<String> title,
      Value<int> rating,
      Value<String> memo,
      Value<int> rowid,
    });

class $$SessionsTableFilterComposer
    extends Composer<_$AppDatabase, $SessionsTable> {
  $$SessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $SessionsTable> {
  $$SessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SessionsTable> {
  $$SessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get memo =>
      $composableBuilder(column: $table.memo, builder: (column) => column);
}

class $$SessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SessionsTable,
          Session,
          $$SessionsTableFilterComposer,
          $$SessionsTableOrderingComposer,
          $$SessionsTableAnnotationComposer,
          $$SessionsTableCreateCompanionBuilder,
          $$SessionsTableUpdateCompanionBuilder,
          (Session, BaseReferences<_$AppDatabase, $SessionsTable, Session>),
          Session,
          PrefetchHooks Function()
        > {
  $$SessionsTableTableManager(_$AppDatabase db, $SessionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> rating = const Value.absent(),
                Value<String> memo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SessionsCompanion(
                id: id,
                date: date,
                title: title,
                rating: rating,
                memo: memo,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime date,
                Value<String> title = const Value.absent(),
                Value<int> rating = const Value.absent(),
                Value<String> memo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SessionsCompanion.insert(
                id: id,
                date: date,
                title: title,
                rating: rating,
                memo: memo,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SessionsTable,
      Session,
      $$SessionsTableFilterComposer,
      $$SessionsTableOrderingComposer,
      $$SessionsTableAnnotationComposer,
      $$SessionsTableCreateCompanionBuilder,
      $$SessionsTableUpdateCompanionBuilder,
      (Session, BaseReferences<_$AppDatabase, $SessionsTable, Session>),
      Session,
      PrefetchHooks Function()
    >;
typedef $$SessionEntriesTableCreateCompanionBuilder =
    SessionEntriesCompanion Function({
      required String id,
      required String sessionId,
      required String librarySongId,
      Value<String> performer,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$SessionEntriesTableUpdateCompanionBuilder =
    SessionEntriesCompanion Function({
      Value<String> id,
      Value<String> sessionId,
      Value<String> librarySongId,
      Value<String> performer,
      Value<int> sortOrder,
      Value<int> rowid,
    });

class $$SessionEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $SessionEntriesTable> {
  $$SessionEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sessionId => $composableBuilder(
    column: $table.sessionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get librarySongId => $composableBuilder(
    column: $table.librarySongId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get performer => $composableBuilder(
    column: $table.performer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SessionEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $SessionEntriesTable> {
  $$SessionEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sessionId => $composableBuilder(
    column: $table.sessionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get librarySongId => $composableBuilder(
    column: $table.librarySongId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get performer => $composableBuilder(
    column: $table.performer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SessionEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SessionEntriesTable> {
  $$SessionEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sessionId =>
      $composableBuilder(column: $table.sessionId, builder: (column) => column);

  GeneratedColumn<String> get librarySongId => $composableBuilder(
    column: $table.librarySongId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get performer =>
      $composableBuilder(column: $table.performer, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);
}

class $$SessionEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SessionEntriesTable,
          SessionEntry,
          $$SessionEntriesTableFilterComposer,
          $$SessionEntriesTableOrderingComposer,
          $$SessionEntriesTableAnnotationComposer,
          $$SessionEntriesTableCreateCompanionBuilder,
          $$SessionEntriesTableUpdateCompanionBuilder,
          (
            SessionEntry,
            BaseReferences<_$AppDatabase, $SessionEntriesTable, SessionEntry>,
          ),
          SessionEntry,
          PrefetchHooks Function()
        > {
  $$SessionEntriesTableTableManager(
    _$AppDatabase db,
    $SessionEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SessionEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SessionEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SessionEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> sessionId = const Value.absent(),
                Value<String> librarySongId = const Value.absent(),
                Value<String> performer = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SessionEntriesCompanion(
                id: id,
                sessionId: sessionId,
                librarySongId: librarySongId,
                performer: performer,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String sessionId,
                required String librarySongId,
                Value<String> performer = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SessionEntriesCompanion.insert(
                id: id,
                sessionId: sessionId,
                librarySongId: librarySongId,
                performer: performer,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SessionEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SessionEntriesTable,
      SessionEntry,
      $$SessionEntriesTableFilterComposer,
      $$SessionEntriesTableOrderingComposer,
      $$SessionEntriesTableAnnotationComposer,
      $$SessionEntriesTableCreateCompanionBuilder,
      $$SessionEntriesTableUpdateCompanionBuilder,
      (
        SessionEntry,
        BaseReferences<_$AppDatabase, $SessionEntriesTable, SessionEntry>,
      ),
      SessionEntry,
      PrefetchHooks Function()
    >;
typedef $$PerformersTableCreateCompanionBuilder =
    PerformersCompanion Function({
      required String id,
      required String name,
      Value<int> rowid,
    });
typedef $$PerformersTableUpdateCompanionBuilder =
    PerformersCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> rowid,
    });

class $$PerformersTableFilterComposer
    extends Composer<_$AppDatabase, $PerformersTable> {
  $$PerformersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PerformersTableOrderingComposer
    extends Composer<_$AppDatabase, $PerformersTable> {
  $$PerformersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PerformersTableAnnotationComposer
    extends Composer<_$AppDatabase, $PerformersTable> {
  $$PerformersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);
}

class $$PerformersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PerformersTable,
          Performer,
          $$PerformersTableFilterComposer,
          $$PerformersTableOrderingComposer,
          $$PerformersTableAnnotationComposer,
          $$PerformersTableCreateCompanionBuilder,
          $$PerformersTableUpdateCompanionBuilder,
          (
            Performer,
            BaseReferences<_$AppDatabase, $PerformersTable, Performer>,
          ),
          Performer,
          PrefetchHooks Function()
        > {
  $$PerformersTableTableManager(_$AppDatabase db, $PerformersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PerformersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PerformersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PerformersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PerformersCompanion(id: id, name: name, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<int> rowid = const Value.absent(),
              }) =>
                  PerformersCompanion.insert(id: id, name: name, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PerformersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PerformersTable,
      Performer,
      $$PerformersTableFilterComposer,
      $$PerformersTableOrderingComposer,
      $$PerformersTableAnnotationComposer,
      $$PerformersTableCreateCompanionBuilder,
      $$PerformersTableUpdateCompanionBuilder,
      (Performer, BaseReferences<_$AppDatabase, $PerformersTable, Performer>),
      Performer,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LibrarySongsTableTableManager get librarySongs =>
      $$LibrarySongsTableTableManager(_db, _db.librarySongs);
  $$SessionsTableTableManager get sessions =>
      $$SessionsTableTableManager(_db, _db.sessions);
  $$SessionEntriesTableTableManager get sessionEntries =>
      $$SessionEntriesTableTableManager(_db, _db.sessionEntries);
  $$PerformersTableTableManager get performers =>
      $$PerformersTableTableManager(_db, _db.performers);
}
