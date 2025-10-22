// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonListItems {
  /// The name of the pokemon.
  String get name;

  /// The url of the pokemon.
  String get url;

  /// Create a copy of PokemonListItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonListItemsCopyWith<PokemonListItems> get copyWith =>
      _$PokemonListItemsCopyWithImpl<PokemonListItems>(
          this as PokemonListItems, _$identity);

  /// Serializes this PokemonListItems to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonListItems &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'PokemonListItems(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class $PokemonListItemsCopyWith<$Res> {
  factory $PokemonListItemsCopyWith(
          PokemonListItems value, $Res Function(PokemonListItems) _then) =
      _$PokemonListItemsCopyWithImpl;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListItemsCopyWithImpl<$Res>
    implements $PokemonListItemsCopyWith<$Res> {
  _$PokemonListItemsCopyWithImpl(this._self, this._then);

  final PokemonListItems _self;
  final $Res Function(PokemonListItems) _then;

  /// Create a copy of PokemonListItems
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

/// Adds pattern-matching-related methods to [PokemonListItems].
extension PokemonListItemsPatterns on PokemonListItems {
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
    TResult Function(_PokemonListItems value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonListItems() when $default != null:
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
    TResult Function(_PokemonListItems value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonListItems():
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
    TResult? Function(_PokemonListItems value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonListItems() when $default != null:
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
      case _PokemonListItems() when $default != null:
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
      case _PokemonListItems():
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
      case _PokemonListItems() when $default != null:
        return $default(_that.name, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonListItems implements PokemonListItems {
  const _PokemonListItems({required this.name, required this.url});
  factory _PokemonListItems.fromJson(Map<String, dynamic> json) =>
      _$PokemonListItemsFromJson(json);

  /// The name of the pokemon.
  @override
  final String name;

  /// The url of the pokemon.
  @override
  final String url;

  /// Create a copy of PokemonListItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonListItemsCopyWith<_PokemonListItems> get copyWith =>
      __$PokemonListItemsCopyWithImpl<_PokemonListItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonListItemsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonListItems &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @override
  String toString() {
    return 'PokemonListItems(name: $name, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$PokemonListItemsCopyWith<$Res>
    implements $PokemonListItemsCopyWith<$Res> {
  factory _$PokemonListItemsCopyWith(
          _PokemonListItems value, $Res Function(_PokemonListItems) _then) =
      __$PokemonListItemsCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$PokemonListItemsCopyWithImpl<$Res>
    implements _$PokemonListItemsCopyWith<$Res> {
  __$PokemonListItemsCopyWithImpl(this._self, this._then);

  final _PokemonListItems _self;
  final $Res Function(_PokemonListItems) _then;

  /// Create a copy of PokemonListItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_PokemonListItems(
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

// dart format on
