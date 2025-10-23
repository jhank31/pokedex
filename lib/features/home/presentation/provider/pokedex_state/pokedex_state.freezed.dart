// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokedexState {
  List<PokemonDetailEntity> get pokemons;
  bool get isLoading;
  bool get isLoadingMore;
  bool get hasActiveFilters;
  List<String> get activeFilters;
  AppFailure? get failure;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokedexStateCopyWith<PokedexState> get copyWith =>
      _$PokedexStateCopyWithImpl<PokedexState>(
          this as PokedexState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokedexState &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasActiveFilters, hasActiveFilters) ||
                other.hasActiveFilters == hasActiveFilters) &&
            const DeepCollectionEquality()
                .equals(other.activeFilters, activeFilters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pokemons),
      isLoading,
      isLoadingMore,
      hasActiveFilters,
      const DeepCollectionEquality().hash(activeFilters),
      failure);

  @override
  String toString() {
    return 'PokedexState(pokemons: $pokemons, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasActiveFilters: $hasActiveFilters, activeFilters: $activeFilters, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) _then) =
      _$PokedexStateCopyWithImpl;
  @useResult
  $Res call(
      {List<PokemonDetailEntity> pokemons,
      bool isLoading,
      bool isLoadingMore,
      bool hasActiveFilters,
      List<String> activeFilters,
      AppFailure? failure});
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res> implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._self, this._then);

  final PokedexState _self;
  final $Res Function(PokedexState) _then;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasActiveFilters = null,
    Object? activeFilters = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      pokemons: null == pokemons
          ? _self.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetailEntity>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasActiveFilters: null == hasActiveFilters
          ? _self.hasActiveFilters
          : hasActiveFilters // ignore: cast_nullable_to_non_nullable
              as bool,
      activeFilters: null == activeFilters
          ? _self.activeFilters
          : activeFilters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokedexState].
extension PokedexStatePatterns on PokedexState {
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
    TResult Function(_PokedexState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokedexState() when $default != null:
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
    TResult Function(_PokedexState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokedexState():
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
    TResult? Function(_PokedexState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokedexState() when $default != null:
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
            List<PokemonDetailEntity> pokemons,
            bool isLoading,
            bool isLoadingMore,
            bool hasActiveFilters,
            List<String> activeFilters,
            AppFailure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokedexState() when $default != null:
        return $default(_that.pokemons, _that.isLoading, _that.isLoadingMore,
            _that.hasActiveFilters, _that.activeFilters, _that.failure);
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
            List<PokemonDetailEntity> pokemons,
            bool isLoading,
            bool isLoadingMore,
            bool hasActiveFilters,
            List<String> activeFilters,
            AppFailure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokedexState():
        return $default(_that.pokemons, _that.isLoading, _that.isLoadingMore,
            _that.hasActiveFilters, _that.activeFilters, _that.failure);
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
            List<PokemonDetailEntity> pokemons,
            bool isLoading,
            bool isLoadingMore,
            bool hasActiveFilters,
            List<String> activeFilters,
            AppFailure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokedexState() when $default != null:
        return $default(_that.pokemons, _that.isLoading, _that.isLoadingMore,
            _that.hasActiveFilters, _that.activeFilters, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokedexState implements PokedexState {
  const _PokedexState(
      {final List<PokemonDetailEntity> pokemons = const [],
      this.isLoading = false,
      this.isLoadingMore = false,
      this.hasActiveFilters = false,
      final List<String> activeFilters = const [],
      this.failure})
      : _pokemons = pokemons,
        _activeFilters = activeFilters;

  final List<PokemonDetailEntity> _pokemons;
  @override
  @JsonKey()
  List<PokemonDetailEntity> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasActiveFilters;
  final List<String> _activeFilters;
  @override
  @JsonKey()
  List<String> get activeFilters {
    if (_activeFilters is EqualUnmodifiableListView) return _activeFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeFilters);
  }

  @override
  final AppFailure? failure;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokedexStateCopyWith<_PokedexState> get copyWith =>
      __$PokedexStateCopyWithImpl<_PokedexState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokedexState &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasActiveFilters, hasActiveFilters) ||
                other.hasActiveFilters == hasActiveFilters) &&
            const DeepCollectionEquality()
                .equals(other._activeFilters, _activeFilters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pokemons),
      isLoading,
      isLoadingMore,
      hasActiveFilters,
      const DeepCollectionEquality().hash(_activeFilters),
      failure);

  @override
  String toString() {
    return 'PokedexState(pokemons: $pokemons, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasActiveFilters: $hasActiveFilters, activeFilters: $activeFilters, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$PokedexStateCopyWith<$Res>
    implements $PokedexStateCopyWith<$Res> {
  factory _$PokedexStateCopyWith(
          _PokedexState value, $Res Function(_PokedexState) _then) =
      __$PokedexStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<PokemonDetailEntity> pokemons,
      bool isLoading,
      bool isLoadingMore,
      bool hasActiveFilters,
      List<String> activeFilters,
      AppFailure? failure});
}

/// @nodoc
class __$PokedexStateCopyWithImpl<$Res>
    implements _$PokedexStateCopyWith<$Res> {
  __$PokedexStateCopyWithImpl(this._self, this._then);

  final _PokedexState _self;
  final $Res Function(_PokedexState) _then;

  /// Create a copy of PokedexState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pokemons = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasActiveFilters = null,
    Object? activeFilters = null,
    Object? failure = freezed,
  }) {
    return _then(_PokedexState(
      pokemons: null == pokemons
          ? _self._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetailEntity>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasActiveFilters: null == hasActiveFilters
          ? _self.hasActiveFilters
          : hasActiveFilters // ignore: cast_nullable_to_non_nullable
              as bool,
      activeFilters: null == activeFilters
          ? _self._activeFilters
          : activeFilters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
    ));
  }
}

// dart format on
