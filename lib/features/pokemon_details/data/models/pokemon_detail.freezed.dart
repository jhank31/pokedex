// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonDetail {
  /// The id of the pokemon.
  int get id;

  /// The Pokemon name.
  String get name;

  /// The height of the pokemon.
  int get height;

  /// The weight of the pokemon.
  int get weight;

  /// The types of the pokemon.
  List<PokemonTypeSlot> get types;

  /// The sprites of the pokemon.
  PokemonSprites get sprites;

  /// The abilities of the pokemon.
  List<PokemonAbilitySlot> get abilities;

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonDetailCopyWith<PokemonDetail> get copyWith =>
      _$PokemonDetailCopyWithImpl<PokemonDetail>(
          this as PokemonDetail, _$identity);

  /// Serializes this PokemonDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other.abilities, abilities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      const DeepCollectionEquality().hash(types),
      sprites,
      const DeepCollectionEquality().hash(abilities));

  @override
  String toString() {
    return 'PokemonDetail(id: $id, name: $name, height: $height, weight: $weight, types: $types, sprites: $sprites, abilities: $abilities)';
  }
}

/// @nodoc
abstract mixin class $PokemonDetailCopyWith<$Res> {
  factory $PokemonDetailCopyWith(
          PokemonDetail value, $Res Function(PokemonDetail) _then) =
      _$PokemonDetailCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeSlot> types,
      PokemonSprites sprites,
      List<PokemonAbilitySlot> abilities});

  $PokemonSpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailCopyWithImpl<$Res>
    implements $PokemonDetailCopyWith<$Res> {
  _$PokemonDetailCopyWithImpl(this._self, this._then);

  final PokemonDetail _self;
  final $Res Function(PokemonDetail) _then;

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? sprites = null,
    Object? abilities = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      sprites: null == sprites
          ? _self.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      abilities: null == abilities
          ? _self.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilitySlot>,
    ));
  }

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesCopyWith<$Res> get sprites {
    return $PokemonSpritesCopyWith<$Res>(_self.sprites, (value) {
      return _then(_self.copyWith(sprites: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonDetail].
extension PokemonDetailPatterns on PokemonDetail {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonDetail() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetail():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetail() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            int height,
            int weight,
            List<PokemonTypeSlot> types,
            PokemonSprites sprites,
            List<PokemonAbilitySlot> abilities)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonDetail() when $default != null:
        return $default(_that.id, _that.name, _that.height, _that.weight,
            _that.types, _that.sprites, _that.abilities);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            int height,
            int weight,
            List<PokemonTypeSlot> types,
            PokemonSprites sprites,
            List<PokemonAbilitySlot> abilities)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetail():
        return $default(_that.id, _that.name, _that.height, _that.weight,
            _that.types, _that.sprites, _that.abilities);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String name,
            int height,
            int weight,
            List<PokemonTypeSlot> types,
            PokemonSprites sprites,
            List<PokemonAbilitySlot> abilities)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetail() when $default != null:
        return $default(_that.id, _that.name, _that.height, _that.weight,
            _that.types, _that.sprites, _that.abilities);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonDetail implements PokemonDetail {
  const _PokemonDetail(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required final List<PokemonTypeSlot> types,
      required this.sprites,
      required final List<PokemonAbilitySlot> abilities})
      : _types = types,
        _abilities = abilities;
  factory _PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);

  /// The id of the pokemon.
  @override
  final int id;

  /// The Pokemon name.
  @override
  final String name;

  /// The height of the pokemon.
  @override
  final int height;

  /// The weight of the pokemon.
  @override
  final int weight;

  /// The types of the pokemon.
  final List<PokemonTypeSlot> _types;

  /// The types of the pokemon.
  @override
  List<PokemonTypeSlot> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  /// The sprites of the pokemon.
  @override
  final PokemonSprites sprites;

  /// The abilities of the pokemon.
  final List<PokemonAbilitySlot> _abilities;

  /// The abilities of the pokemon.
  @override
  List<PokemonAbilitySlot> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonDetailCopyWith<_PokemonDetail> get copyWith =>
      __$PokemonDetailCopyWithImpl<_PokemonDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      sprites,
      const DeepCollectionEquality().hash(_abilities));

  @override
  String toString() {
    return 'PokemonDetail(id: $id, name: $name, height: $height, weight: $weight, types: $types, sprites: $sprites, abilities: $abilities)';
  }
}

/// @nodoc
abstract mixin class _$PokemonDetailCopyWith<$Res>
    implements $PokemonDetailCopyWith<$Res> {
  factory _$PokemonDetailCopyWith(
          _PokemonDetail value, $Res Function(_PokemonDetail) _then) =
      __$PokemonDetailCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeSlot> types,
      PokemonSprites sprites,
      List<PokemonAbilitySlot> abilities});

  @override
  $PokemonSpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$PokemonDetailCopyWithImpl<$Res>
    implements _$PokemonDetailCopyWith<$Res> {
  __$PokemonDetailCopyWithImpl(this._self, this._then);

  final _PokemonDetail _self;
  final $Res Function(_PokemonDetail) _then;

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? sprites = null,
    Object? abilities = null,
  }) {
    return _then(_PokemonDetail(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeSlot>,
      sprites: null == sprites
          ? _self.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      abilities: null == abilities
          ? _self._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilitySlot>,
    ));
  }

  /// Create a copy of PokemonDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesCopyWith<$Res> get sprites {
    return $PokemonSpritesCopyWith<$Res>(_self.sprites, (value) {
      return _then(_self.copyWith(sprites: value));
    });
  }
}

/// @nodoc
mixin _$PokemonTypeSlot {
  /// The slot of the pokemon type.
  int get slot;

  /// The type of the pokemon.
  PokemonType get type;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonTypeSlotCopyWith<PokemonTypeSlot> get copyWith =>
      _$PokemonTypeSlotCopyWithImpl<PokemonTypeSlot>(
          this as PokemonTypeSlot, _$identity);

  /// Serializes this PokemonTypeSlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonTypeSlot &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @override
  String toString() {
    return 'PokemonTypeSlot(slot: $slot, type: $type)';
  }
}

/// @nodoc
abstract mixin class $PokemonTypeSlotCopyWith<$Res> {
  factory $PokemonTypeSlotCopyWith(
          PokemonTypeSlot value, $Res Function(PokemonTypeSlot) _then) =
      _$PokemonTypeSlotCopyWithImpl;
  @useResult
  $Res call({int slot, PokemonType type});

  $PokemonTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeSlotCopyWithImpl<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  _$PokemonTypeSlotCopyWithImpl(this._self, this._then);

  final PokemonTypeSlot _self;
  final $Res Function(PokemonTypeSlot) _then;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ));
  }

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeCopyWith<$Res> get type {
    return $PokemonTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonTypeSlot].
extension PokemonTypeSlotPatterns on PokemonTypeSlot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonTypeSlot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeSlot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonTypeSlot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeSlot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonTypeSlot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeSlot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int slot, PokemonType type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeSlot() when $default != null:
        return $default(_that.slot, _that.type);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int slot, PokemonType type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeSlot():
        return $default(_that.slot, _that.type);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int slot, PokemonType type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonTypeSlot() when $default != null:
        return $default(_that.slot, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonTypeSlot implements PokemonTypeSlot {
  const _PokemonTypeSlot({required this.slot, required this.type});
  factory _PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);

  /// The slot of the pokemon type.
  @override
  final int slot;

  /// The type of the pokemon.
  @override
  final PokemonType type;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonTypeSlotCopyWith<_PokemonTypeSlot> get copyWith =>
      __$PokemonTypeSlotCopyWithImpl<_PokemonTypeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonTypeSlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonTypeSlot &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @override
  String toString() {
    return 'PokemonTypeSlot(slot: $slot, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$PokemonTypeSlotCopyWith<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  factory _$PokemonTypeSlotCopyWith(
          _PokemonTypeSlot value, $Res Function(_PokemonTypeSlot) _then) =
      __$PokemonTypeSlotCopyWithImpl;
  @override
  @useResult
  $Res call({int slot, PokemonType type});

  @override
  $PokemonTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$PokemonTypeSlotCopyWithImpl<$Res>
    implements _$PokemonTypeSlotCopyWith<$Res> {
  __$PokemonTypeSlotCopyWithImpl(this._self, this._then);

  final _PokemonTypeSlot _self;
  final $Res Function(_PokemonTypeSlot) _then;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_PokemonTypeSlot(
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ));
  }

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeCopyWith<$Res> get type {
    return $PokemonTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// @nodoc
mixin _$PokemonType {
  /// The name of the pokemon type.
  String get name;

  /// The url of the pokemon type.
  String get url;

  /// Create a copy of PokemonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      _$PokemonTypeCopyWithImpl<PokemonType>(this as PokemonType, _$identity);

  /// Serializes this PokemonType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'PokemonType(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) _then) =
      _$PokemonTypeCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res> implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._self, this._then);

  final PokemonType _self;
  final $Res Function(PokemonType) _then;

  /// Create a copy of PokemonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonType].
extension PokemonTypePatterns on PokemonType {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonType() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonType():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonType() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonType() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonType():
        return $default(_that.name, _that.url);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonType() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonType implements PokemonType {
  const _PokemonType({required this.name, required this.url});
  factory _PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);

  /// The name of the pokemon type.
  @override
  final String name;

  /// The url of the pokemon type.
  @override
  final String url;

  /// Create a copy of PokemonType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonTypeCopyWith<_PokemonType> get copyWith =>
      __$PokemonTypeCopyWithImpl<_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'PokemonType(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$PokemonTypeCopyWith(
          _PokemonType value, $Res Function(_PokemonType) _then) =
      __$PokemonTypeCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$PokemonTypeCopyWithImpl<$Res> implements _$PokemonTypeCopyWith<$Res> {
  __$PokemonTypeCopyWithImpl(this._self, this._then);

  final _PokemonType _self;
  final $Res Function(_PokemonType) _then;

  /// Create a copy of PokemonType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_PokemonType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PokemonAbilitySlot {
  /// The is hidden of the pokemon ability.
  bool? get isHidden;

  /// The slot of the pokemon ability.
  int get slot;

  /// The ability of the pokemon.
  PokemonAbility get ability;

  /// Create a copy of PokemonAbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonAbilitySlotCopyWith<PokemonAbilitySlot> get copyWith =>
      _$PokemonAbilitySlotCopyWithImpl<PokemonAbilitySlot>(
          this as PokemonAbilitySlot, _$identity);

  /// Serializes this PokemonAbilitySlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonAbilitySlot &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHidden, slot, ability);

  @override
  String toString() {
    return 'PokemonAbilitySlot(isHidden: $isHidden, slot: $slot, ability: $ability)';
  }
}

/// @nodoc
abstract mixin class $PokemonAbilitySlotCopyWith<$Res> {
  factory $PokemonAbilitySlotCopyWith(
          PokemonAbilitySlot value, $Res Function(PokemonAbilitySlot) _then) =
      _$PokemonAbilitySlotCopyWithImpl;
  @useResult
  $Res call({bool? isHidden, int slot, PokemonAbility ability});

  $PokemonAbilityCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilitySlotCopyWithImpl<$Res>
    implements $PokemonAbilitySlotCopyWith<$Res> {
  _$PokemonAbilitySlotCopyWithImpl(this._self, this._then);

  final PokemonAbilitySlot _self;
  final $Res Function(PokemonAbilitySlot) _then;

  /// Create a copy of PokemonAbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = freezed,
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(_self.copyWith(
      isHidden: freezed == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      ability: null == ability
          ? _self.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonAbility,
    ));
  }

  /// Create a copy of PokemonAbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonAbilityCopyWith<$Res> get ability {
    return $PokemonAbilityCopyWith<$Res>(_self.ability, (value) {
      return _then(_self.copyWith(ability: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonAbilitySlot].
extension PokemonAbilitySlotPatterns on PokemonAbilitySlot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonAbilitySlot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilitySlot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonAbilitySlot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilitySlot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonAbilitySlot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilitySlot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool? isHidden, int slot, PokemonAbility ability)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilitySlot() when $default != null:
        return $default(_that.isHidden, _that.slot, _that.ability);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool? isHidden, int slot, PokemonAbility ability) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilitySlot():
        return $default(_that.isHidden, _that.slot, _that.ability);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool? isHidden, int slot, PokemonAbility ability)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilitySlot() when $default != null:
        return $default(_that.isHidden, _that.slot, _that.ability);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonAbilitySlot implements PokemonAbilitySlot {
  const _PokemonAbilitySlot(
      {this.isHidden, required this.slot, required this.ability});
  factory _PokemonAbilitySlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilitySlotFromJson(json);

  /// The is hidden of the pokemon ability.
  @override
  final bool? isHidden;

  /// The slot of the pokemon ability.
  @override
  final int slot;

  /// The ability of the pokemon.
  @override
  final PokemonAbility ability;

  /// Create a copy of PokemonAbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonAbilitySlotCopyWith<_PokemonAbilitySlot> get copyWith =>
      __$PokemonAbilitySlotCopyWithImpl<_PokemonAbilitySlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonAbilitySlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonAbilitySlot &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHidden, slot, ability);

  @override
  String toString() {
    return 'PokemonAbilitySlot(isHidden: $isHidden, slot: $slot, ability: $ability)';
  }
}

/// @nodoc
abstract mixin class _$PokemonAbilitySlotCopyWith<$Res>
    implements $PokemonAbilitySlotCopyWith<$Res> {
  factory _$PokemonAbilitySlotCopyWith(
          _PokemonAbilitySlot value, $Res Function(_PokemonAbilitySlot) _then) =
      __$PokemonAbilitySlotCopyWithImpl;
  @override
  @useResult
  $Res call({bool? isHidden, int slot, PokemonAbility ability});

  @override
  $PokemonAbilityCopyWith<$Res> get ability;
}

/// @nodoc
class __$PokemonAbilitySlotCopyWithImpl<$Res>
    implements _$PokemonAbilitySlotCopyWith<$Res> {
  __$PokemonAbilitySlotCopyWithImpl(this._self, this._then);

  final _PokemonAbilitySlot _self;
  final $Res Function(_PokemonAbilitySlot) _then;

  /// Create a copy of PokemonAbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isHidden = freezed,
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(_PokemonAbilitySlot(
      isHidden: freezed == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      ability: null == ability
          ? _self.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonAbility,
    ));
  }

  /// Create a copy of PokemonAbilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonAbilityCopyWith<$Res> get ability {
    return $PokemonAbilityCopyWith<$Res>(_self.ability, (value) {
      return _then(_self.copyWith(ability: value));
    });
  }
}

/// @nodoc
mixin _$PokemonAbility {
  /// The name of the pokemon ability.
  String get name;

  /// The url of the pokemon ability.
  String get url;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonAbilityCopyWith<PokemonAbility> get copyWith =>
      _$PokemonAbilityCopyWithImpl<PokemonAbility>(
          this as PokemonAbility, _$identity);

  /// Serializes this PokemonAbility to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonAbility &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'PokemonAbility(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $PokemonAbilityCopyWith<$Res> {
  factory $PokemonAbilityCopyWith(
          PokemonAbility value, $Res Function(PokemonAbility) _then) =
      _$PokemonAbilityCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._self, this._then);

  final PokemonAbility _self;
  final $Res Function(PokemonAbility) _then;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonAbility].
extension PokemonAbilityPatterns on PokemonAbility {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonAbility value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonAbility value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonAbility value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility():
        return $default(_that.name, _that.url);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonAbility implements PokemonAbility {
  const _PokemonAbility({required this.name, required this.url});
  factory _PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);

  /// The name of the pokemon ability.
  @override
  final String name;

  /// The url of the pokemon ability.
  @override
  final String url;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonAbilityCopyWith<_PokemonAbility> get copyWith =>
      __$PokemonAbilityCopyWithImpl<_PokemonAbility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonAbilityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonAbility &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'PokemonAbility(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$PokemonAbilityCopyWith<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  factory _$PokemonAbilityCopyWith(
          _PokemonAbility value, $Res Function(_PokemonAbility) _then) =
      __$PokemonAbilityCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$PokemonAbilityCopyWithImpl<$Res>
    implements _$PokemonAbilityCopyWith<$Res> {
  __$PokemonAbilityCopyWithImpl(this._self, this._then);

  final _PokemonAbility _self;
  final $Res Function(_PokemonAbility) _then;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_PokemonAbility(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PokemonSprites {
  /// The front default sprite of the pokemon.
  @JsonKey(name: 'front_default')
  String? get frontDefault;

  /// The back default sprite of the pokemon.
  @JsonKey(name: 'back_default')
  String? get backDefault;

  /// The other sprites of the pokemon.
  PokemonSpritesOther? get other;

  /// Create a copy of PokemonSprites
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonSpritesCopyWith<PokemonSprites> get copyWith =>
      _$PokemonSpritesCopyWithImpl<PokemonSprites>(
          this as PokemonSprites, _$identity);

  /// Serializes this PokemonSprites to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSprites &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, frontDefault, backDefault, other);

  @override
  String toString() {
    return 'PokemonSprites(frontDefault: $frontDefault, backDefault: $backDefault, other: $other)';
  }
}

/// @nodoc
abstract mixin class $PokemonSpritesCopyWith<$Res> {
  factory $PokemonSpritesCopyWith(
          PokemonSprites value, $Res Function(PokemonSprites) _then) =
      _$PokemonSpritesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'back_default') String? backDefault,
      PokemonSpritesOther? other});

  $PokemonSpritesOtherCopyWith<$Res>? get other;
}

/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._self, this._then);

  final PokemonSprites _self;
  final $Res Function(PokemonSprites) _then;

  /// Create a copy of PokemonSprites
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
    Object? other = freezed,
  }) {
    return _then(_self.copyWith(
      frontDefault: freezed == frontDefault
          ? _self.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _self.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _self.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesOther?,
    ));
  }

  /// Create a copy of PokemonSprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesOtherCopyWith<$Res>? get other {
    if (_self.other == null) {
      return null;
    }

    return $PokemonSpritesOtherCopyWith<$Res>(_self.other!, (value) {
      return _then(_self.copyWith(other: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonSprites].
extension PokemonSpritesPatterns on PokemonSprites {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonSprites value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSprites() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonSprites value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSprites():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonSprites value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSprites() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'front_default') String? frontDefault,
            @JsonKey(name: 'back_default') String? backDefault,
            PokemonSpritesOther? other)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSprites() when $default != null:
        return $default(_that.frontDefault, _that.backDefault, _that.other);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'front_default') String? frontDefault,
            @JsonKey(name: 'back_default') String? backDefault,
            PokemonSpritesOther? other)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSprites():
        return $default(_that.frontDefault, _that.backDefault, _that.other);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'front_default') String? frontDefault,
            @JsonKey(name: 'back_default') String? backDefault,
            PokemonSpritesOther? other)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSprites() when $default != null:
        return $default(_that.frontDefault, _that.backDefault, _that.other);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonSprites implements PokemonSprites {
  const _PokemonSprites(
      {@JsonKey(name: 'front_default') this.frontDefault,
      @JsonKey(name: 'back_default') this.backDefault,
      this.other});
  factory _PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);

  /// The front default sprite of the pokemon.
  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  /// The back default sprite of the pokemon.
  @override
  @JsonKey(name: 'back_default')
  final String? backDefault;

  /// The other sprites of the pokemon.
  @override
  final PokemonSpritesOther? other;

  /// Create a copy of PokemonSprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonSpritesCopyWith<_PokemonSprites> get copyWith =>
      __$PokemonSpritesCopyWithImpl<_PokemonSprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonSpritesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSprites &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, frontDefault, backDefault, other);

  @override
  String toString() {
    return 'PokemonSprites(frontDefault: $frontDefault, backDefault: $backDefault, other: $other)';
  }
}

/// @nodoc
abstract mixin class _$PokemonSpritesCopyWith<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  factory _$PokemonSpritesCopyWith(
          _PokemonSprites value, $Res Function(_PokemonSprites) _then) =
      __$PokemonSpritesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'back_default') String? backDefault,
      PokemonSpritesOther? other});

  @override
  $PokemonSpritesOtherCopyWith<$Res>? get other;
}

/// @nodoc
class __$PokemonSpritesCopyWithImpl<$Res>
    implements _$PokemonSpritesCopyWith<$Res> {
  __$PokemonSpritesCopyWithImpl(this._self, this._then);

  final _PokemonSprites _self;
  final $Res Function(_PokemonSprites) _then;

  /// Create a copy of PokemonSprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
    Object? other = freezed,
  }) {
    return _then(_PokemonSprites(
      frontDefault: freezed == frontDefault
          ? _self.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      backDefault: freezed == backDefault
          ? _self.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _self.other
          : other // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesOther?,
    ));
  }

  /// Create a copy of PokemonSprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesOtherCopyWith<$Res>? get other {
    if (_self.other == null) {
      return null;
    }

    return $PokemonSpritesOtherCopyWith<$Res>(_self.other!, (value) {
      return _then(_self.copyWith(other: value));
    });
  }
}

/// @nodoc
mixin _$PokemonSpritesOther {
  /// The official artwork sprite of the pokemon.
  PokemonOfficialArtwork? get officialArtwork;

  /// Create a copy of PokemonSpritesOther
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonSpritesOtherCopyWith<PokemonSpritesOther> get copyWith =>
      _$PokemonSpritesOtherCopyWithImpl<PokemonSpritesOther>(
          this as PokemonSpritesOther, _$identity);

  /// Serializes this PokemonSpritesOther to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSpritesOther &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  @override
  String toString() {
    return 'PokemonSpritesOther(officialArtwork: $officialArtwork)';
  }
}

/// @nodoc
abstract mixin class $PokemonSpritesOtherCopyWith<$Res> {
  factory $PokemonSpritesOtherCopyWith(
          PokemonSpritesOther value, $Res Function(PokemonSpritesOther) _then) =
      _$PokemonSpritesOtherCopyWithImpl;
  @useResult
  $Res call({PokemonOfficialArtwork? officialArtwork});

  $PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class _$PokemonSpritesOtherCopyWithImpl<$Res>
    implements $PokemonSpritesOtherCopyWith<$Res> {
  _$PokemonSpritesOtherCopyWithImpl(this._self, this._then);

  final PokemonSpritesOther _self;
  final $Res Function(PokemonSpritesOther) _then;

  /// Create a copy of PokemonSpritesOther
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_self.copyWith(
      officialArtwork: freezed == officialArtwork
          ? _self.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as PokemonOfficialArtwork?,
    ));
  }

  /// Create a copy of PokemonSpritesOther
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
      return null;
    }

    return $PokemonOfficialArtworkCopyWith<$Res>(_self.officialArtwork!,
        (value) {
      return _then(_self.copyWith(officialArtwork: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonSpritesOther].
extension PokemonSpritesOtherPatterns on PokemonSpritesOther {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonSpritesOther value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSpritesOther() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonSpritesOther value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpritesOther():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonSpritesOther value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpritesOther() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(PokemonOfficialArtwork? officialArtwork)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSpritesOther() when $default != null:
        return $default(_that.officialArtwork);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(PokemonOfficialArtwork? officialArtwork) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpritesOther():
        return $default(_that.officialArtwork);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(PokemonOfficialArtwork? officialArtwork)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpritesOther() when $default != null:
        return $default(_that.officialArtwork);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonSpritesOther implements PokemonSpritesOther {
  const _PokemonSpritesOther({this.officialArtwork});
  factory _PokemonSpritesOther.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesOtherFromJson(json);

  /// The official artwork sprite of the pokemon.
  @override
  final PokemonOfficialArtwork? officialArtwork;

  /// Create a copy of PokemonSpritesOther
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonSpritesOtherCopyWith<_PokemonSpritesOther> get copyWith =>
      __$PokemonSpritesOtherCopyWithImpl<_PokemonSpritesOther>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonSpritesOtherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSpritesOther &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  @override
  String toString() {
    return 'PokemonSpritesOther(officialArtwork: $officialArtwork)';
  }
}

/// @nodoc
abstract mixin class _$PokemonSpritesOtherCopyWith<$Res>
    implements $PokemonSpritesOtherCopyWith<$Res> {
  factory _$PokemonSpritesOtherCopyWith(_PokemonSpritesOther value,
          $Res Function(_PokemonSpritesOther) _then) =
      __$PokemonSpritesOtherCopyWithImpl;
  @override
  @useResult
  $Res call({PokemonOfficialArtwork? officialArtwork});

  @override
  $PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class __$PokemonSpritesOtherCopyWithImpl<$Res>
    implements _$PokemonSpritesOtherCopyWith<$Res> {
  __$PokemonSpritesOtherCopyWithImpl(this._self, this._then);

  final _PokemonSpritesOther _self;
  final $Res Function(_PokemonSpritesOther) _then;

  /// Create a copy of PokemonSpritesOther
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? officialArtwork = freezed,
  }) {
    return _then(_PokemonSpritesOther(
      officialArtwork: freezed == officialArtwork
          ? _self.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as PokemonOfficialArtwork?,
    ));
  }

  /// Create a copy of PokemonSpritesOther
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
      return null;
    }

    return $PokemonOfficialArtworkCopyWith<$Res>(_self.officialArtwork!,
        (value) {
      return _then(_self.copyWith(officialArtwork: value));
    });
  }
}

/// @nodoc
mixin _$PokemonOfficialArtwork {
  /// The front default sprite of the pokemon.
  String? get frontDefault;

  /// Create a copy of PokemonOfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonOfficialArtworkCopyWith<PokemonOfficialArtwork> get copyWith =>
      _$PokemonOfficialArtworkCopyWithImpl<PokemonOfficialArtwork>(
          this as PokemonOfficialArtwork, _$identity);

  /// Serializes this PokemonOfficialArtwork to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonOfficialArtwork &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @override
  String toString() {
    return 'PokemonOfficialArtwork(frontDefault: $frontDefault)';
  }
}

/// @nodoc
abstract mixin class $PokemonOfficialArtworkCopyWith<$Res> {
  factory $PokemonOfficialArtworkCopyWith(PokemonOfficialArtwork value,
          $Res Function(PokemonOfficialArtwork) _then) =
      _$PokemonOfficialArtworkCopyWithImpl;
  @useResult
  $Res call({String? frontDefault});
}

/// @nodoc
class _$PokemonOfficialArtworkCopyWithImpl<$Res>
    implements $PokemonOfficialArtworkCopyWith<$Res> {
  _$PokemonOfficialArtworkCopyWithImpl(this._self, this._then);

  final PokemonOfficialArtwork _self;
  final $Res Function(PokemonOfficialArtwork) _then;

  /// Create a copy of PokemonOfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_self.copyWith(
      frontDefault: freezed == frontDefault
          ? _self.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonOfficialArtwork].
extension PokemonOfficialArtworkPatterns on PokemonOfficialArtwork {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonOfficialArtwork value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonOfficialArtwork() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonOfficialArtwork value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonOfficialArtwork():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonOfficialArtwork value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonOfficialArtwork() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? frontDefault)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonOfficialArtwork() when $default != null:
        return $default(_that.frontDefault);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? frontDefault) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonOfficialArtwork():
        return $default(_that.frontDefault);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? frontDefault)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonOfficialArtwork() when $default != null:
        return $default(_that.frontDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonOfficialArtwork implements PokemonOfficialArtwork {
  const _PokemonOfficialArtwork({this.frontDefault});
  factory _PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkFromJson(json);

  /// The front default sprite of the pokemon.
  @override
  final String? frontDefault;

  /// Create a copy of PokemonOfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonOfficialArtworkCopyWith<_PokemonOfficialArtwork> get copyWith =>
      __$PokemonOfficialArtworkCopyWithImpl<_PokemonOfficialArtwork>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonOfficialArtworkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonOfficialArtwork &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @override
  String toString() {
    return 'PokemonOfficialArtwork(frontDefault: $frontDefault)';
  }
}

/// @nodoc
abstract mixin class _$PokemonOfficialArtworkCopyWith<$Res>
    implements $PokemonOfficialArtworkCopyWith<$Res> {
  factory _$PokemonOfficialArtworkCopyWith(_PokemonOfficialArtwork value,
          $Res Function(_PokemonOfficialArtwork) _then) =
      __$PokemonOfficialArtworkCopyWithImpl;
  @override
  @useResult
  $Res call({String? frontDefault});
}

/// @nodoc
class __$PokemonOfficialArtworkCopyWithImpl<$Res>
    implements _$PokemonOfficialArtworkCopyWith<$Res> {
  __$PokemonOfficialArtworkCopyWithImpl(this._self, this._then);

  final _PokemonOfficialArtwork _self;
  final $Res Function(_PokemonOfficialArtwork) _then;

  /// Create a copy of PokemonOfficialArtwork
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_PokemonOfficialArtwork(
      frontDefault: freezed == frontDefault
          ? _self.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
