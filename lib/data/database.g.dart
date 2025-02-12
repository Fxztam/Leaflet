// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Note extends DataClass implements Insertable<Note> {
  final String id;
  final String title;
  final String content;
  final bool starred;
  final DateTime creationDate;
  final DateTime lastModifyDate;
  final int color;
  final List<SavedImage> images;
  final bool list;
  final List<ListItem> listContent;
  final List<DateTime> reminders;
  final List<String> tags;
  final bool hideContent;
  final bool lockNote;
  final bool usesBiometrics;
  final bool deleted;
  final bool archived;
  final bool synced;
  Note(
      {required this.id,
      required this.title,
      required this.content,
      required this.starred,
      required this.creationDate,
      required this.lastModifyDate,
      required this.color,
      required this.images,
      required this.list,
      required this.listContent,
      required this.reminders,
      required this.tags,
      required this.hideContent,
      required this.lockNote,
      required this.usesBiometrics,
      required this.deleted,
      required this.archived,
      required this.synced});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Note(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
      starred: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}starred'])!,
      creationDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_date'])!,
      lastModifyDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_modify_date'])!,
      color: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color'])!,
      images: $NotesTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}images']))!,
      list: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}list'])!,
      listContent: $NotesTable.$converter1.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}list_content']))!,
      reminders: $NotesTable.$converter2.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reminders']))!,
      tags: $NotesTable.$converter3.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tags']))!,
      hideContent: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hide_content'])!,
      lockNote: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lock_note'])!,
      usesBiometrics: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uses_biometrics'])!,
      deleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted'])!,
      archived: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}archived'])!,
      synced: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}synced'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['starred'] = Variable<bool>(starred);
    map['creation_date'] = Variable<DateTime>(creationDate);
    map['last_modify_date'] = Variable<DateTime>(lastModifyDate);
    map['color'] = Variable<int>(color);
    {
      final converter = $NotesTable.$converter0;
      map['images'] = Variable<String>(converter.mapToSql(images)!);
    }
    map['list'] = Variable<bool>(list);
    {
      final converter = $NotesTable.$converter1;
      map['list_content'] = Variable<String>(converter.mapToSql(listContent)!);
    }
    {
      final converter = $NotesTable.$converter2;
      map['reminders'] = Variable<String>(converter.mapToSql(reminders)!);
    }
    {
      final converter = $NotesTable.$converter3;
      map['tags'] = Variable<String>(converter.mapToSql(tags)!);
    }
    map['hide_content'] = Variable<bool>(hideContent);
    map['lock_note'] = Variable<bool>(lockNote);
    map['uses_biometrics'] = Variable<bool>(usesBiometrics);
    map['deleted'] = Variable<bool>(deleted);
    map['archived'] = Variable<bool>(archived);
    map['synced'] = Variable<bool>(synced);
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      starred: Value(starred),
      creationDate: Value(creationDate),
      lastModifyDate: Value(lastModifyDate),
      color: Value(color),
      images: Value(images),
      list: Value(list),
      listContent: Value(listContent),
      reminders: Value(reminders),
      tags: Value(tags),
      hideContent: Value(hideContent),
      lockNote: Value(lockNote),
      usesBiometrics: Value(usesBiometrics),
      deleted: Value(deleted),
      archived: Value(archived),
      synced: Value(synced),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      starred: serializer.fromJson<bool>(json['starred']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      lastModifyDate: serializer.fromJson<DateTime>(json['lastModifyDate']),
      color: serializer.fromJson<int>(json['color']),
      images: serializer.fromJson<List<SavedImage>>(json['images']),
      list: serializer.fromJson<bool>(json['list']),
      listContent: serializer.fromJson<List<ListItem>>(json['listContent']),
      reminders: serializer.fromJson<List<DateTime>>(json['reminders']),
      tags: serializer.fromJson<List<String>>(json['tags']),
      hideContent: serializer.fromJson<bool>(json['hideContent']),
      lockNote: serializer.fromJson<bool>(json['lockNote']),
      usesBiometrics: serializer.fromJson<bool>(json['usesBiometrics']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      archived: serializer.fromJson<bool>(json['archived']),
      synced: serializer.fromJson<bool>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'starred': serializer.toJson<bool>(starred),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'lastModifyDate': serializer.toJson<DateTime>(lastModifyDate),
      'color': serializer.toJson<int>(color),
      'images': serializer.toJson<List<SavedImage>>(images),
      'list': serializer.toJson<bool>(list),
      'listContent': serializer.toJson<List<ListItem>>(listContent),
      'reminders': serializer.toJson<List<DateTime>>(reminders),
      'tags': serializer.toJson<List<String>>(tags),
      'hideContent': serializer.toJson<bool>(hideContent),
      'lockNote': serializer.toJson<bool>(lockNote),
      'usesBiometrics': serializer.toJson<bool>(usesBiometrics),
      'deleted': serializer.toJson<bool>(deleted),
      'archived': serializer.toJson<bool>(archived),
      'synced': serializer.toJson<bool>(synced),
    };
  }

  Note copyWith(
          {String? id,
          String? title,
          String? content,
          bool? starred,
          DateTime? creationDate,
          DateTime? lastModifyDate,
          int? color,
          List<SavedImage>? images,
          bool? list,
          List<ListItem>? listContent,
          List<DateTime>? reminders,
          List<String>? tags,
          bool? hideContent,
          bool? lockNote,
          bool? usesBiometrics,
          bool? deleted,
          bool? archived,
          bool? synced}) =>
      Note(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        starred: starred ?? this.starred,
        creationDate: creationDate ?? this.creationDate,
        lastModifyDate: lastModifyDate ?? this.lastModifyDate,
        color: color ?? this.color,
        images: images ?? this.images,
        list: list ?? this.list,
        listContent: listContent ?? this.listContent,
        reminders: reminders ?? this.reminders,
        tags: tags ?? this.tags,
        hideContent: hideContent ?? this.hideContent,
        lockNote: lockNote ?? this.lockNote,
        usesBiometrics: usesBiometrics ?? this.usesBiometrics,
        deleted: deleted ?? this.deleted,
        archived: archived ?? this.archived,
        synced: synced ?? this.synced,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('starred: $starred, ')
          ..write('creationDate: $creationDate, ')
          ..write('lastModifyDate: $lastModifyDate, ')
          ..write('color: $color, ')
          ..write('images: $images, ')
          ..write('list: $list, ')
          ..write('listContent: $listContent, ')
          ..write('reminders: $reminders, ')
          ..write('tags: $tags, ')
          ..write('hideContent: $hideContent, ')
          ..write('lockNote: $lockNote, ')
          ..write('usesBiometrics: $usesBiometrics, ')
          ..write('deleted: $deleted, ')
          ..write('archived: $archived, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      content,
      starred,
      creationDate,
      lastModifyDate,
      color,
      images,
      list,
      listContent,
      reminders,
      tags,
      hideContent,
      lockNote,
      usesBiometrics,
      deleted,
      archived,
      synced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.starred == this.starred &&
          other.creationDate == this.creationDate &&
          other.lastModifyDate == this.lastModifyDate &&
          other.color == this.color &&
          other.images == this.images &&
          other.list == this.list &&
          other.listContent == this.listContent &&
          other.reminders == this.reminders &&
          other.tags == this.tags &&
          other.hideContent == this.hideContent &&
          other.lockNote == this.lockNote &&
          other.usesBiometrics == this.usesBiometrics &&
          other.deleted == this.deleted &&
          other.archived == this.archived &&
          other.synced == this.synced);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> content;
  final Value<bool> starred;
  final Value<DateTime> creationDate;
  final Value<DateTime> lastModifyDate;
  final Value<int> color;
  final Value<List<SavedImage>> images;
  final Value<bool> list;
  final Value<List<ListItem>> listContent;
  final Value<List<DateTime>> reminders;
  final Value<List<String>> tags;
  final Value<bool> hideContent;
  final Value<bool> lockNote;
  final Value<bool> usesBiometrics;
  final Value<bool> deleted;
  final Value<bool> archived;
  final Value<bool> synced;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.starred = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.lastModifyDate = const Value.absent(),
    this.color = const Value.absent(),
    this.images = const Value.absent(),
    this.list = const Value.absent(),
    this.listContent = const Value.absent(),
    this.reminders = const Value.absent(),
    this.tags = const Value.absent(),
    this.hideContent = const Value.absent(),
    this.lockNote = const Value.absent(),
    this.usesBiometrics = const Value.absent(),
    this.deleted = const Value.absent(),
    this.archived = const Value.absent(),
    this.synced = const Value.absent(),
  });
  NotesCompanion.insert({
    required String id,
    required String title,
    required String content,
    this.starred = const Value.absent(),
    required DateTime creationDate,
    required DateTime lastModifyDate,
    this.color = const Value.absent(),
    required List<SavedImage> images,
    this.list = const Value.absent(),
    required List<ListItem> listContent,
    required List<DateTime> reminders,
    required List<String> tags,
    this.hideContent = const Value.absent(),
    this.lockNote = const Value.absent(),
    this.usesBiometrics = const Value.absent(),
    this.deleted = const Value.absent(),
    this.archived = const Value.absent(),
    this.synced = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        content = Value(content),
        creationDate = Value(creationDate),
        lastModifyDate = Value(lastModifyDate),
        images = Value(images),
        listContent = Value(listContent),
        reminders = Value(reminders),
        tags = Value(tags);
  static Insertable<Note> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<bool>? starred,
    Expression<DateTime>? creationDate,
    Expression<DateTime>? lastModifyDate,
    Expression<int>? color,
    Expression<List<SavedImage>>? images,
    Expression<bool>? list,
    Expression<List<ListItem>>? listContent,
    Expression<List<DateTime>>? reminders,
    Expression<List<String>>? tags,
    Expression<bool>? hideContent,
    Expression<bool>? lockNote,
    Expression<bool>? usesBiometrics,
    Expression<bool>? deleted,
    Expression<bool>? archived,
    Expression<bool>? synced,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (starred != null) 'starred': starred,
      if (creationDate != null) 'creation_date': creationDate,
      if (lastModifyDate != null) 'last_modify_date': lastModifyDate,
      if (color != null) 'color': color,
      if (images != null) 'images': images,
      if (list != null) 'list': list,
      if (listContent != null) 'list_content': listContent,
      if (reminders != null) 'reminders': reminders,
      if (tags != null) 'tags': tags,
      if (hideContent != null) 'hide_content': hideContent,
      if (lockNote != null) 'lock_note': lockNote,
      if (usesBiometrics != null) 'uses_biometrics': usesBiometrics,
      if (deleted != null) 'deleted': deleted,
      if (archived != null) 'archived': archived,
      if (synced != null) 'synced': synced,
    });
  }

  NotesCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? content,
      Value<bool>? starred,
      Value<DateTime>? creationDate,
      Value<DateTime>? lastModifyDate,
      Value<int>? color,
      Value<List<SavedImage>>? images,
      Value<bool>? list,
      Value<List<ListItem>>? listContent,
      Value<List<DateTime>>? reminders,
      Value<List<String>>? tags,
      Value<bool>? hideContent,
      Value<bool>? lockNote,
      Value<bool>? usesBiometrics,
      Value<bool>? deleted,
      Value<bool>? archived,
      Value<bool>? synced}) {
    return NotesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      starred: starred ?? this.starred,
      creationDate: creationDate ?? this.creationDate,
      lastModifyDate: lastModifyDate ?? this.lastModifyDate,
      color: color ?? this.color,
      images: images ?? this.images,
      list: list ?? this.list,
      listContent: listContent ?? this.listContent,
      reminders: reminders ?? this.reminders,
      tags: tags ?? this.tags,
      hideContent: hideContent ?? this.hideContent,
      lockNote: lockNote ?? this.lockNote,
      usesBiometrics: usesBiometrics ?? this.usesBiometrics,
      deleted: deleted ?? this.deleted,
      archived: archived ?? this.archived,
      synced: synced ?? this.synced,
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
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (starred.present) {
      map['starred'] = Variable<bool>(starred.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (lastModifyDate.present) {
      map['last_modify_date'] = Variable<DateTime>(lastModifyDate.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (images.present) {
      final converter = $NotesTable.$converter0;
      map['images'] = Variable<String>(converter.mapToSql(images.value)!);
    }
    if (list.present) {
      map['list'] = Variable<bool>(list.value);
    }
    if (listContent.present) {
      final converter = $NotesTable.$converter1;
      map['list_content'] =
          Variable<String>(converter.mapToSql(listContent.value)!);
    }
    if (reminders.present) {
      final converter = $NotesTable.$converter2;
      map['reminders'] = Variable<String>(converter.mapToSql(reminders.value)!);
    }
    if (tags.present) {
      final converter = $NotesTable.$converter3;
      map['tags'] = Variable<String>(converter.mapToSql(tags.value)!);
    }
    if (hideContent.present) {
      map['hide_content'] = Variable<bool>(hideContent.value);
    }
    if (lockNote.present) {
      map['lock_note'] = Variable<bool>(lockNote.value);
    }
    if (usesBiometrics.present) {
      map['uses_biometrics'] = Variable<bool>(usesBiometrics.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<bool>(deleted.value);
    }
    if (archived.present) {
      map['archived'] = Variable<bool>(archived.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('starred: $starred, ')
          ..write('creationDate: $creationDate, ')
          ..write('lastModifyDate: $lastModifyDate, ')
          ..write('color: $color, ')
          ..write('images: $images, ')
          ..write('list: $list, ')
          ..write('listContent: $listContent, ')
          ..write('reminders: $reminders, ')
          ..write('tags: $tags, ')
          ..write('hideContent: $hideContent, ')
          ..write('lockNote: $lockNote, ')
          ..write('usesBiometrics: $usesBiometrics, ')
          ..write('deleted: $deleted, ')
          ..write('archived: $archived, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }
}

class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _starredMeta = const VerificationMeta('starred');
  @override
  late final GeneratedColumn<bool?> starred = GeneratedColumn<bool?>(
      'starred', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (starred IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  @override
  late final GeneratedColumn<DateTime?> creationDate =
      GeneratedColumn<DateTime?>('creation_date', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _lastModifyDateMeta =
      const VerificationMeta('lastModifyDate');
  @override
  late final GeneratedColumn<DateTime?> lastModifyDate =
      GeneratedColumn<DateTime?>('last_modify_date', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int?> color = GeneratedColumn<int?>(
      'color', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _imagesMeta = const VerificationMeta('images');
  @override
  late final GeneratedColumnWithTypeConverter<List<SavedImage>, String?>
      images = GeneratedColumn<String?>('images', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<List<SavedImage>>($NotesTable.$converter0);
  final VerificationMeta _listMeta = const VerificationMeta('list');
  @override
  late final GeneratedColumn<bool?> list = GeneratedColumn<bool?>(
      'list', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (list IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _listContentMeta =
      const VerificationMeta('listContent');
  @override
  late final GeneratedColumnWithTypeConverter<List<ListItem>, String?>
      listContent = GeneratedColumn<String?>('list_content', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<List<ListItem>>($NotesTable.$converter1);
  final VerificationMeta _remindersMeta = const VerificationMeta('reminders');
  @override
  late final GeneratedColumnWithTypeConverter<List<DateTime>, String?>
      reminders = GeneratedColumn<String?>('reminders', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<List<DateTime>>($NotesTable.$converter2);
  final VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String?> tags =
      GeneratedColumn<String?>('tags', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<List<String>>($NotesTable.$converter3);
  final VerificationMeta _hideContentMeta =
      const VerificationMeta('hideContent');
  @override
  late final GeneratedColumn<bool?> hideContent = GeneratedColumn<bool?>(
      'hide_content', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (hide_content IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _lockNoteMeta = const VerificationMeta('lockNote');
  @override
  late final GeneratedColumn<bool?> lockNote = GeneratedColumn<bool?>(
      'lock_note', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (lock_note IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _usesBiometricsMeta =
      const VerificationMeta('usesBiometrics');
  @override
  late final GeneratedColumn<bool?> usesBiometrics = GeneratedColumn<bool?>(
      'uses_biometrics', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (uses_biometrics IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool?> deleted = GeneratedColumn<bool?>(
      'deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _archivedMeta = const VerificationMeta('archived');
  @override
  late final GeneratedColumn<bool?> archived = GeneratedColumn<bool?>(
      'archived', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (archived IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool?> synced = GeneratedColumn<bool?>(
      'synced', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (synced IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        content,
        starred,
        creationDate,
        lastModifyDate,
        color,
        images,
        list,
        listContent,
        reminders,
        tags,
        hideContent,
        lockNote,
        usesBiometrics,
        deleted,
        archived,
        synced
      ];
  @override
  String get aliasedName => _alias ?? 'notes';
  @override
  String get actualTableName => 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('starred')) {
      context.handle(_starredMeta,
          starred.isAcceptableOrUnknown(data['starred']!, _starredMeta));
    }
    if (data.containsKey('creation_date')) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableOrUnknown(
              data['creation_date']!, _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (data.containsKey('last_modify_date')) {
      context.handle(
          _lastModifyDateMeta,
          lastModifyDate.isAcceptableOrUnknown(
              data['last_modify_date']!, _lastModifyDateMeta));
    } else if (isInserting) {
      context.missing(_lastModifyDateMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    context.handle(_imagesMeta, const VerificationResult.success());
    if (data.containsKey('list')) {
      context.handle(
          _listMeta, list.isAcceptableOrUnknown(data['list']!, _listMeta));
    }
    context.handle(_listContentMeta, const VerificationResult.success());
    context.handle(_remindersMeta, const VerificationResult.success());
    context.handle(_tagsMeta, const VerificationResult.success());
    if (data.containsKey('hide_content')) {
      context.handle(
          _hideContentMeta,
          hideContent.isAcceptableOrUnknown(
              data['hide_content']!, _hideContentMeta));
    }
    if (data.containsKey('lock_note')) {
      context.handle(_lockNoteMeta,
          lockNote.isAcceptableOrUnknown(data['lock_note']!, _lockNoteMeta));
    }
    if (data.containsKey('uses_biometrics')) {
      context.handle(
          _usesBiometricsMeta,
          usesBiometrics.isAcceptableOrUnknown(
              data['uses_biometrics']!, _usesBiometricsMeta));
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    if (data.containsKey('archived')) {
      context.handle(_archivedMeta,
          archived.isAcceptableOrUnknown(data['archived']!, _archivedMeta));
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Note.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(attachedDatabase, alias);
  }

  static TypeConverter<List<SavedImage>, String> $converter0 =
      const ImageListConverter();
  static TypeConverter<List<ListItem>, String> $converter1 =
      const ListContentConverter();
  static TypeConverter<List<DateTime>, String> $converter2 =
      const ReminderListConverter();
  static TypeConverter<List<String>, String> $converter3 =
      const TagListConverter();
}

class Tag extends DataClass implements Insertable<Tag> {
  final String id;
  final String name;
  final DateTime lastModifyDate;
  Tag({required this.id, required this.name, required this.lastModifyDate});
  factory Tag.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Tag(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      lastModifyDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_modify_date'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['last_modify_date'] = Variable<DateTime>(lastModifyDate);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: Value(id),
      name: Value(name),
      lastModifyDate: Value(lastModifyDate),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lastModifyDate: serializer.fromJson<DateTime>(json['lastModifyDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'lastModifyDate': serializer.toJson<DateTime>(lastModifyDate),
    };
  }

  Tag copyWith({String? id, String? name, DateTime? lastModifyDate}) => Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        lastModifyDate: lastModifyDate ?? this.lastModifyDate,
      );
  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastModifyDate: $lastModifyDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, lastModifyDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.id == this.id &&
          other.name == this.name &&
          other.lastModifyDate == this.lastModifyDate);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> lastModifyDate;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lastModifyDate = const Value.absent(),
  });
  TagsCompanion.insert({
    required String id,
    required String name,
    required DateTime lastModifyDate,
  })  : id = Value(id),
        name = Value(name),
        lastModifyDate = Value(lastModifyDate);
  static Insertable<Tag> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? lastModifyDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lastModifyDate != null) 'last_modify_date': lastModifyDate,
    });
  }

  TagsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<DateTime>? lastModifyDate}) {
    return TagsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lastModifyDate: lastModifyDate ?? this.lastModifyDate,
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
    if (lastModifyDate.present) {
      map['last_modify_date'] = Variable<DateTime>(lastModifyDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastModifyDate: $lastModifyDate')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastModifyDateMeta =
      const VerificationMeta('lastModifyDate');
  @override
  late final GeneratedColumn<DateTime?> lastModifyDate =
      GeneratedColumn<DateTime?>('last_modify_date', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, lastModifyDate];
  @override
  String get aliasedName => _alias ?? 'tags';
  @override
  String get actualTableName => 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('last_modify_date')) {
      context.handle(
          _lastModifyDateMeta,
          lastModifyDate.isAcceptableOrUnknown(
              data['last_modify_date']!, _lastModifyDateMeta));
    } else if (isInserting) {
      context.missing(_lastModifyDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Tag.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NotesTable notes = $NotesTable(this);
  late final $TagsTable tags = $TagsTable(this);
  late final NoteHelper noteHelper = NoteHelper(this as AppDatabase);
  late final TagHelper tagHelper = TagHelper(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [notes, tags];
}
