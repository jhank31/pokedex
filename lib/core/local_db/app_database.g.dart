// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UserSettingsTable extends UserSettings
    with TableInfo<$UserSettingsTable, UserSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _hasSeenOnboardingMeta =
      const VerificationMeta('hasSeenOnboarding');
  @override
  late final GeneratedColumn<bool> hasSeenOnboarding = GeneratedColumn<bool>(
      'has_seen_onboarding', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_seen_onboarding" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _darkModeMeta =
      const VerificationMeta('darkMode');
  @override
  late final GeneratedColumn<bool> darkMode = GeneratedColumn<bool>(
      'dark_mode', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("dark_mode" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [id, hasSeenOnboarding, darkMode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_settings';
  @override
  VerificationContext validateIntegrity(Insertable<UserSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('has_seen_onboarding')) {
      context.handle(
          _hasSeenOnboardingMeta,
          hasSeenOnboarding.isAcceptableOrUnknown(
              data['has_seen_onboarding']!, _hasSeenOnboardingMeta));
    }
    if (data.containsKey('dark_mode')) {
      context.handle(_darkModeMeta,
          darkMode.isAcceptableOrUnknown(data['dark_mode']!, _darkModeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserSetting(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      hasSeenOnboarding: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}has_seen_onboarding'])!,
      darkMode: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}dark_mode'])!,
    );
  }

  @override
  $UserSettingsTable createAlias(String alias) {
    return $UserSettingsTable(attachedDatabase, alias);
  }
}

class UserSetting extends DataClass implements Insertable<UserSetting> {
  /// Primary key.
  final int id;

  /// Whether the user has seen the onboarding.
  final bool hasSeenOnboarding;

  /// Whether dark mode is enabled.
  final bool darkMode;
  const UserSetting(
      {required this.id,
      required this.hasSeenOnboarding,
      required this.darkMode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['has_seen_onboarding'] = Variable<bool>(hasSeenOnboarding);
    map['dark_mode'] = Variable<bool>(darkMode);
    return map;
  }

  UserSettingsCompanion toCompanion(bool nullToAbsent) {
    return UserSettingsCompanion(
      id: Value(id),
      hasSeenOnboarding: Value(hasSeenOnboarding),
      darkMode: Value(darkMode),
    );
  }

  factory UserSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserSetting(
      id: serializer.fromJson<int>(json['id']),
      hasSeenOnboarding: serializer.fromJson<bool>(json['hasSeenOnboarding']),
      darkMode: serializer.fromJson<bool>(json['darkMode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hasSeenOnboarding': serializer.toJson<bool>(hasSeenOnboarding),
      'darkMode': serializer.toJson<bool>(darkMode),
    };
  }

  UserSetting copyWith({int? id, bool? hasSeenOnboarding, bool? darkMode}) =>
      UserSetting(
        id: id ?? this.id,
        hasSeenOnboarding: hasSeenOnboarding ?? this.hasSeenOnboarding,
        darkMode: darkMode ?? this.darkMode,
      );
  UserSetting copyWithCompanion(UserSettingsCompanion data) {
    return UserSetting(
      id: data.id.present ? data.id.value : this.id,
      hasSeenOnboarding: data.hasSeenOnboarding.present
          ? data.hasSeenOnboarding.value
          : this.hasSeenOnboarding,
      darkMode: data.darkMode.present ? data.darkMode.value : this.darkMode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserSetting(')
          ..write('id: $id, ')
          ..write('hasSeenOnboarding: $hasSeenOnboarding, ')
          ..write('darkMode: $darkMode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hasSeenOnboarding, darkMode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserSetting &&
          other.id == this.id &&
          other.hasSeenOnboarding == this.hasSeenOnboarding &&
          other.darkMode == this.darkMode);
}

class UserSettingsCompanion extends UpdateCompanion<UserSetting> {
  final Value<int> id;
  final Value<bool> hasSeenOnboarding;
  final Value<bool> darkMode;
  const UserSettingsCompanion({
    this.id = const Value.absent(),
    this.hasSeenOnboarding = const Value.absent(),
    this.darkMode = const Value.absent(),
  });
  UserSettingsCompanion.insert({
    this.id = const Value.absent(),
    this.hasSeenOnboarding = const Value.absent(),
    this.darkMode = const Value.absent(),
  });
  static Insertable<UserSetting> custom({
    Expression<int>? id,
    Expression<bool>? hasSeenOnboarding,
    Expression<bool>? darkMode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hasSeenOnboarding != null) 'has_seen_onboarding': hasSeenOnboarding,
      if (darkMode != null) 'dark_mode': darkMode,
    });
  }

  UserSettingsCompanion copyWith(
      {Value<int>? id, Value<bool>? hasSeenOnboarding, Value<bool>? darkMode}) {
    return UserSettingsCompanion(
      id: id ?? this.id,
      hasSeenOnboarding: hasSeenOnboarding ?? this.hasSeenOnboarding,
      darkMode: darkMode ?? this.darkMode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hasSeenOnboarding.present) {
      map['has_seen_onboarding'] = Variable<bool>(hasSeenOnboarding.value);
    }
    if (darkMode.present) {
      map['dark_mode'] = Variable<bool>(darkMode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserSettingsCompanion(')
          ..write('id: $id, ')
          ..write('hasSeenOnboarding: $hasSeenOnboarding, ')
          ..write('darkMode: $darkMode')
          ..write(')'))
        .toString();
  }
}

class $PokemonFavoritesTable extends PokemonFavorites
    with TableInfo<$PokemonFavoritesTable, PokemonFavorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonFavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta =
      const VerificationMeta('pokemonId');
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
      'pokemon_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
      'added_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [pokemonId, name, imageUrl, addedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_favorites';
  @override
  VerificationContext validateIntegrity(Insertable<PokemonFavorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(_pokemonIdMeta,
          pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId};
  @override
  PokemonFavorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonFavorite(
      pokemonId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url'])!,
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!,
    );
  }

  @override
  $PokemonFavoritesTable createAlias(String alias) {
    return $PokemonFavoritesTable(attachedDatabase, alias);
  }
}

class PokemonFavorite extends DataClass implements Insertable<PokemonFavorite> {
  /// The Pokemon ID (primary key).
  final int pokemonId;

  /// The Pokemon name.
  final String name;

  /// The URL of the Pokemon image.
  final String imageUrl;

  /// The timestamp when the Pokemon was added to favorites.
  final DateTime addedAt;
  const PokemonFavorite(
      {required this.pokemonId,
      required this.name,
      required this.imageUrl,
      required this.addedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['name'] = Variable<String>(name);
    map['image_url'] = Variable<String>(imageUrl);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  PokemonFavoritesCompanion toCompanion(bool nullToAbsent) {
    return PokemonFavoritesCompanion(
      pokemonId: Value(pokemonId),
      name: Value(name),
      imageUrl: Value(imageUrl),
      addedAt: Value(addedAt),
    );
  }

  factory PokemonFavorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonFavorite(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      name: serializer.fromJson<String>(json['name']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'name': serializer.toJson<String>(name),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  PokemonFavorite copyWith(
          {int? pokemonId,
          String? name,
          String? imageUrl,
          DateTime? addedAt}) =>
      PokemonFavorite(
        pokemonId: pokemonId ?? this.pokemonId,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        addedAt: addedAt ?? this.addedAt,
      );
  PokemonFavorite copyWithCompanion(PokemonFavoritesCompanion data) {
    return PokemonFavorite(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      name: data.name.present ? data.name.value : this.name,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonFavorite(')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, name, imageUrl, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonFavorite &&
          other.pokemonId == this.pokemonId &&
          other.name == this.name &&
          other.imageUrl == this.imageUrl &&
          other.addedAt == this.addedAt);
}

class PokemonFavoritesCompanion extends UpdateCompanion<PokemonFavorite> {
  final Value<int> pokemonId;
  final Value<String> name;
  final Value<String> imageUrl;
  final Value<DateTime> addedAt;
  const PokemonFavoritesCompanion({
    this.pokemonId = const Value.absent(),
    this.name = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.addedAt = const Value.absent(),
  });
  PokemonFavoritesCompanion.insert({
    this.pokemonId = const Value.absent(),
    required String name,
    required String imageUrl,
    required DateTime addedAt,
  })  : name = Value(name),
        imageUrl = Value(imageUrl),
        addedAt = Value(addedAt);
  static Insertable<PokemonFavorite> custom({
    Expression<int>? pokemonId,
    Expression<String>? name,
    Expression<String>? imageUrl,
    Expression<DateTime>? addedAt,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (name != null) 'name': name,
      if (imageUrl != null) 'image_url': imageUrl,
      if (addedAt != null) 'added_at': addedAt,
    });
  }

  PokemonFavoritesCompanion copyWith(
      {Value<int>? pokemonId,
      Value<String>? name,
      Value<String>? imageUrl,
      Value<DateTime>? addedAt}) {
    return PokemonFavoritesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      addedAt: addedAt ?? this.addedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonFavoritesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserSettingsTable userSettings = $UserSettingsTable(this);
  late final $PokemonFavoritesTable pokemonFavorites =
      $PokemonFavoritesTable(this);
  late final UserSettingsDao userSettingsDao =
      UserSettingsDao(this as AppDatabase);
  late final FavoritesDao favoritesDao = FavoritesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userSettings, pokemonFavorites];
}

typedef $$UserSettingsTableCreateCompanionBuilder = UserSettingsCompanion
    Function({
  Value<int> id,
  Value<bool> hasSeenOnboarding,
  Value<bool> darkMode,
});
typedef $$UserSettingsTableUpdateCompanionBuilder = UserSettingsCompanion
    Function({
  Value<int> id,
  Value<bool> hasSeenOnboarding,
  Value<bool> darkMode,
});

class $$UserSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $UserSettingsTable> {
  $$UserSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasSeenOnboarding => $composableBuilder(
      column: $table.hasSeenOnboarding,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get darkMode => $composableBuilder(
      column: $table.darkMode, builder: (column) => ColumnFilters(column));
}

class $$UserSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $UserSettingsTable> {
  $$UserSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasSeenOnboarding => $composableBuilder(
      column: $table.hasSeenOnboarding,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get darkMode => $composableBuilder(
      column: $table.darkMode, builder: (column) => ColumnOrderings(column));
}

class $$UserSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserSettingsTable> {
  $$UserSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get hasSeenOnboarding => $composableBuilder(
      column: $table.hasSeenOnboarding, builder: (column) => column);

  GeneratedColumn<bool> get darkMode =>
      $composableBuilder(column: $table.darkMode, builder: (column) => column);
}

class $$UserSettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserSettingsTable,
    UserSetting,
    $$UserSettingsTableFilterComposer,
    $$UserSettingsTableOrderingComposer,
    $$UserSettingsTableAnnotationComposer,
    $$UserSettingsTableCreateCompanionBuilder,
    $$UserSettingsTableUpdateCompanionBuilder,
    (
      UserSetting,
      BaseReferences<_$AppDatabase, $UserSettingsTable, UserSetting>
    ),
    UserSetting,
    PrefetchHooks Function()> {
  $$UserSettingsTableTableManager(_$AppDatabase db, $UserSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> hasSeenOnboarding = const Value.absent(),
            Value<bool> darkMode = const Value.absent(),
          }) =>
              UserSettingsCompanion(
            id: id,
            hasSeenOnboarding: hasSeenOnboarding,
            darkMode: darkMode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> hasSeenOnboarding = const Value.absent(),
            Value<bool> darkMode = const Value.absent(),
          }) =>
              UserSettingsCompanion.insert(
            id: id,
            hasSeenOnboarding: hasSeenOnboarding,
            darkMode: darkMode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserSettingsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserSettingsTable,
    UserSetting,
    $$UserSettingsTableFilterComposer,
    $$UserSettingsTableOrderingComposer,
    $$UserSettingsTableAnnotationComposer,
    $$UserSettingsTableCreateCompanionBuilder,
    $$UserSettingsTableUpdateCompanionBuilder,
    (
      UserSetting,
      BaseReferences<_$AppDatabase, $UserSettingsTable, UserSetting>
    ),
    UserSetting,
    PrefetchHooks Function()>;
typedef $$PokemonFavoritesTableCreateCompanionBuilder
    = PokemonFavoritesCompanion Function({
  Value<int> pokemonId,
  required String name,
  required String imageUrl,
  required DateTime addedAt,
});
typedef $$PokemonFavoritesTableUpdateCompanionBuilder
    = PokemonFavoritesCompanion Function({
  Value<int> pokemonId,
  Value<String> name,
  Value<String> imageUrl,
  Value<DateTime> addedAt,
});

class $$PokemonFavoritesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonFavoritesTable> {
  $$PokemonFavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get pokemonId => $composableBuilder(
      column: $table.pokemonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnFilters(column));
}

class $$PokemonFavoritesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonFavoritesTable> {
  $$PokemonFavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get pokemonId => $composableBuilder(
      column: $table.pokemonId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnOrderings(column));
}

class $$PokemonFavoritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonFavoritesTable> {
  $$PokemonFavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get pokemonId =>
      $composableBuilder(column: $table.pokemonId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);
}

class $$PokemonFavoritesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PokemonFavoritesTable,
    PokemonFavorite,
    $$PokemonFavoritesTableFilterComposer,
    $$PokemonFavoritesTableOrderingComposer,
    $$PokemonFavoritesTableAnnotationComposer,
    $$PokemonFavoritesTableCreateCompanionBuilder,
    $$PokemonFavoritesTableUpdateCompanionBuilder,
    (
      PokemonFavorite,
      BaseReferences<_$AppDatabase, $PokemonFavoritesTable, PokemonFavorite>
    ),
    PokemonFavorite,
    PrefetchHooks Function()> {
  $$PokemonFavoritesTableTableManager(
      _$AppDatabase db, $PokemonFavoritesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonFavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonFavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonFavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> pokemonId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> imageUrl = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
          }) =>
              PokemonFavoritesCompanion(
            pokemonId: pokemonId,
            name: name,
            imageUrl: imageUrl,
            addedAt: addedAt,
          ),
          createCompanionCallback: ({
            Value<int> pokemonId = const Value.absent(),
            required String name,
            required String imageUrl,
            required DateTime addedAt,
          }) =>
              PokemonFavoritesCompanion.insert(
            pokemonId: pokemonId,
            name: name,
            imageUrl: imageUrl,
            addedAt: addedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PokemonFavoritesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PokemonFavoritesTable,
    PokemonFavorite,
    $$PokemonFavoritesTableFilterComposer,
    $$PokemonFavoritesTableOrderingComposer,
    $$PokemonFavoritesTableAnnotationComposer,
    $$PokemonFavoritesTableCreateCompanionBuilder,
    $$PokemonFavoritesTableUpdateCompanionBuilder,
    (
      PokemonFavorite,
      BaseReferences<_$AppDatabase, $PokemonFavoritesTable, PokemonFavorite>
    ),
    PokemonFavorite,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserSettingsTableTableManager get userSettings =>
      $$UserSettingsTableTableManager(_db, _db.userSettings);
  $$PokemonFavoritesTableTableManager get pokemonFavorites =>
      $$PokemonFavoritesTableTableManager(_db, _db.pokemonFavorites);
}
