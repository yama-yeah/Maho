// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class TasksCompanion extends UpdateCompanion<TaskModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> endTime;
  final Value<int> startTime;
  final Value<String> url;
  final Value<int> courseId;
  final Value<bool> isNotify;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.endTime = const Value.absent(),
    this.startTime = const Value.absent(),
    this.url = const Value.absent(),
    this.courseId = const Value.absent(),
    this.isNotify = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int endTime,
    required int startTime,
    required String url,
    required int courseId,
    required bool isNotify,
  })  : name = Value(name),
        endTime = Value(endTime),
        startTime = Value(startTime),
        url = Value(url),
        courseId = Value(courseId),
        isNotify = Value(isNotify);
  static Insertable<TaskModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? endTime,
    Expression<int>? startTime,
    Expression<String>? url,
    Expression<int>? courseId,
    Expression<bool>? isNotify,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (endTime != null) 'end_time': endTime,
      if (startTime != null) 'start_time': startTime,
      if (url != null) 'url': url,
      if (courseId != null) 'course_id': courseId,
      if (isNotify != null) 'is_notify': isNotify,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? endTime,
      Value<int>? startTime,
      Value<String>? url,
      Value<int>? courseId,
      Value<bool>? isNotify}) {
    return TasksCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      endTime: endTime ?? this.endTime,
      startTime: startTime ?? this.startTime,
      url: url ?? this.url,
      courseId: courseId ?? this.courseId,
      isNotify: isNotify ?? this.isNotify,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<int>(endTime.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<int>(startTime.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (courseId.present) {
      map['course_id'] = Variable<int>(courseId.value);
    }
    if (isNotify.present) {
      map['is_notify'] = Variable<bool>(isNotify.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('endTime: $endTime, ')
          ..write('startTime: $startTime, ')
          ..write('url: $url, ')
          ..write('courseId: $courseId, ')
          ..write('isNotify: $isNotify')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, TaskModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _endTimeMeta = const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<int> endTime = GeneratedColumn<int>(
      'end_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<int> startTime = GeneratedColumn<int>(
      'start_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _courseIdMeta = const VerificationMeta('courseId');
  @override
  late final GeneratedColumn<int> courseId = GeneratedColumn<int>(
      'course_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _isNotifyMeta = const VerificationMeta('isNotify');
  @override
  late final GeneratedColumn<bool> isNotify = GeneratedColumn<bool>(
      'is_notify', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_notify IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, endTime, startTime, url, courseId, isNotify];
  @override
  String get aliasedName => _alias ?? 'tasks';
  @override
  String get actualTableName => 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<TaskModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('course_id')) {
      context.handle(_courseIdMeta,
          courseId.isAcceptableOrUnknown(data['course_id']!, _courseIdMeta));
    } else if (isInserting) {
      context.missing(_courseIdMeta);
    }
    if (data.containsKey('is_notify')) {
      context.handle(_isNotifyMeta,
          isNotify.isAcceptableOrUnknown(data['is_notify']!, _isNotifyMeta));
    } else if (isInserting) {
      context.missing(_isNotifyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskModel(
      url: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      endTime: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}end_time'])!,
      startTime: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}start_time'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isNotify: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_notify'])!,
      courseId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}course_id'])!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class CoursesCompanion extends UpdateCompanion<CourseModel> {
  final Value<int> id;
  final Value<String> fullName;
  final Value<String> shortName;
  final Value<String> url;
  final Value<String> summary;
  final Value<bool> isTaskNotify;
  final Value<bool> isShortName;
  const CoursesCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.shortName = const Value.absent(),
    this.url = const Value.absent(),
    this.summary = const Value.absent(),
    this.isTaskNotify = const Value.absent(),
    this.isShortName = const Value.absent(),
  });
  CoursesCompanion.insert({
    this.id = const Value.absent(),
    required String fullName,
    required String shortName,
    required String url,
    required String summary,
    required bool isTaskNotify,
    required bool isShortName,
  })  : fullName = Value(fullName),
        shortName = Value(shortName),
        url = Value(url),
        summary = Value(summary),
        isTaskNotify = Value(isTaskNotify),
        isShortName = Value(isShortName);
  static Insertable<CourseModel> custom({
    Expression<int>? id,
    Expression<String>? fullName,
    Expression<String>? shortName,
    Expression<String>? url,
    Expression<String>? summary,
    Expression<bool>? isTaskNotify,
    Expression<bool>? isShortName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (shortName != null) 'short_name': shortName,
      if (url != null) 'url': url,
      if (summary != null) 'summary': summary,
      if (isTaskNotify != null) 'is_task_notify': isTaskNotify,
      if (isShortName != null) 'is_short_name': isShortName,
    });
  }

  CoursesCompanion copyWith(
      {Value<int>? id,
      Value<String>? fullName,
      Value<String>? shortName,
      Value<String>? url,
      Value<String>? summary,
      Value<bool>? isTaskNotify,
      Value<bool>? isShortName}) {
    return CoursesCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      shortName: shortName ?? this.shortName,
      url: url ?? this.url,
      summary: summary ?? this.summary,
      isTaskNotify: isTaskNotify ?? this.isTaskNotify,
      isShortName: isShortName ?? this.isShortName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (shortName.present) {
      map['short_name'] = Variable<String>(shortName.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (isTaskNotify.present) {
      map['is_task_notify'] = Variable<bool>(isTaskNotify.value);
    }
    if (isShortName.present) {
      map['is_short_name'] = Variable<bool>(isShortName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoursesCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('shortName: $shortName, ')
          ..write('url: $url, ')
          ..write('summary: $summary, ')
          ..write('isTaskNotify: $isTaskNotify, ')
          ..write('isShortName: $isShortName')
          ..write(')'))
        .toString();
  }
}

class $CoursesTable extends Courses with TableInfo<$CoursesTable, CourseModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoursesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _shortNameMeta = const VerificationMeta('shortName');
  @override
  late final GeneratedColumn<String> shortName = GeneratedColumn<String>(
      'short_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _summaryMeta = const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'summary', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _isTaskNotifyMeta =
      const VerificationMeta('isTaskNotify');
  @override
  late final GeneratedColumn<bool> isTaskNotify = GeneratedColumn<bool>(
      'is_task_notify', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_task_notify IN (0, 1))');
  final VerificationMeta _isShortNameMeta =
      const VerificationMeta('isShortName');
  @override
  late final GeneratedColumn<bool> isShortName = GeneratedColumn<bool>(
      'is_short_name', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_short_name IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns =>
      [id, fullName, shortName, url, summary, isTaskNotify, isShortName];
  @override
  String get aliasedName => _alias ?? 'courses';
  @override
  String get actualTableName => 'courses';
  @override
  VerificationContext validateIntegrity(Insertable<CourseModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('short_name')) {
      context.handle(_shortNameMeta,
          shortName.isAcceptableOrUnknown(data['short_name']!, _shortNameMeta));
    } else if (isInserting) {
      context.missing(_shortNameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta));
    } else if (isInserting) {
      context.missing(_summaryMeta);
    }
    if (data.containsKey('is_task_notify')) {
      context.handle(
          _isTaskNotifyMeta,
          isTaskNotify.isAcceptableOrUnknown(
              data['is_task_notify']!, _isTaskNotifyMeta));
    } else if (isInserting) {
      context.missing(_isTaskNotifyMeta);
    }
    if (data.containsKey('is_short_name')) {
      context.handle(
          _isShortNameMeta,
          isShortName.isAcceptableOrUnknown(
              data['is_short_name']!, _isShortNameMeta));
    } else if (isInserting) {
      context.missing(_isShortNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CourseModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CourseModel(
      fullName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      shortName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}short_name'])!,
      isShortName: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_short_name'])!,
      url: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      summary: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}summary'])!,
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isTaskNotify: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_task_notify'])!,
    );
  }

  @override
  $CoursesTable createAlias(String alias) {
    return $CoursesTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $TasksTable tasks = $TasksTable(this);
  late final $CoursesTable courses = $CoursesTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasks, courses];
}
