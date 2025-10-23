// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSettingsEntity {
  bool get hasSeenOnboarding;
  bool get darkMode;

  /// Create a copy of UserSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSettingsEntityCopyWith<UserSettingsEntity> get copyWith =>
      _$UserSettingsEntityCopyWithImpl<UserSettingsEntity>(
          this as UserSettingsEntity, _$identity);

  /// Serializes this UserSettingsEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSettingsEntity &&
            (identical(other.hasSeenOnboarding, hasSeenOnboarding) ||
                other.hasSeenOnboarding == hasSeenOnboarding) &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasSeenOnboarding, darkMode);

  @override
  String toString() {
    return 'UserSettingsEntity(hasSeenOnboarding: $hasSeenOnboarding, darkMode: $darkMode)';
  }
}

/// @nodoc
abstract mixin class $UserSettingsEntityCopyWith<$Res> {
  factory $UserSettingsEntityCopyWith(
          UserSettingsEntity value, $Res Function(UserSettingsEntity) _then) =
      _$UserSettingsEntityCopyWithImpl;
  @useResult
  $Res call({bool hasSeenOnboarding, bool darkMode});
}

/// @nodoc
class _$UserSettingsEntityCopyWithImpl<$Res>
    implements $UserSettingsEntityCopyWith<$Res> {
  _$UserSettingsEntityCopyWithImpl(this._self, this._then);

  final UserSettingsEntity _self;
  final $Res Function(UserSettingsEntity) _then;

  /// Create a copy of UserSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasSeenOnboarding = null,
    Object? darkMode = null,
  }) {
    return _then(_self.copyWith(
      hasSeenOnboarding: null == hasSeenOnboarding
          ? _self.hasSeenOnboarding
          : hasSeenOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
      darkMode: null == darkMode
          ? _self.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserSettingsEntity].
extension UserSettingsEntityPatterns on UserSettingsEntity {
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
    TResult Function(_UserSettingsEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserSettingsEntity() when $default != null:
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
    TResult Function(_UserSettingsEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSettingsEntity():
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
    TResult? Function(_UserSettingsEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSettingsEntity() when $default != null:
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
    TResult Function(bool hasSeenOnboarding, bool darkMode)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserSettingsEntity() when $default != null:
        return $default(_that.hasSeenOnboarding, _that.darkMode);
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
    TResult Function(bool hasSeenOnboarding, bool darkMode) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSettingsEntity():
        return $default(_that.hasSeenOnboarding, _that.darkMode);
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
    TResult? Function(bool hasSeenOnboarding, bool darkMode)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserSettingsEntity() when $default != null:
        return $default(_that.hasSeenOnboarding, _that.darkMode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserSettingsEntity implements UserSettingsEntity {
  const _UserSettingsEntity(
      {required this.hasSeenOnboarding, this.darkMode = false});
  factory _UserSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsEntityFromJson(json);

  @override
  final bool hasSeenOnboarding;
  @override
  @JsonKey()
  final bool darkMode;

  /// Create a copy of UserSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserSettingsEntityCopyWith<_UserSettingsEntity> get copyWith =>
      __$UserSettingsEntityCopyWithImpl<_UserSettingsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserSettingsEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSettingsEntity &&
            (identical(other.hasSeenOnboarding, hasSeenOnboarding) ||
                other.hasSeenOnboarding == hasSeenOnboarding) &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasSeenOnboarding, darkMode);

  @override
  String toString() {
    return 'UserSettingsEntity(hasSeenOnboarding: $hasSeenOnboarding, darkMode: $darkMode)';
  }
}

/// @nodoc
abstract mixin class _$UserSettingsEntityCopyWith<$Res>
    implements $UserSettingsEntityCopyWith<$Res> {
  factory _$UserSettingsEntityCopyWith(
          _UserSettingsEntity value, $Res Function(_UserSettingsEntity) _then) =
      __$UserSettingsEntityCopyWithImpl;
  @override
  @useResult
  $Res call({bool hasSeenOnboarding, bool darkMode});
}

/// @nodoc
class __$UserSettingsEntityCopyWithImpl<$Res>
    implements _$UserSettingsEntityCopyWith<$Res> {
  __$UserSettingsEntityCopyWithImpl(this._self, this._then);

  final _UserSettingsEntity _self;
  final $Res Function(_UserSettingsEntity) _then;

  /// Create a copy of UserSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hasSeenOnboarding = null,
    Object? darkMode = null,
  }) {
    return _then(_UserSettingsEntity(
      hasSeenOnboarding: null == hasSeenOnboarding
          ? _self.hasSeenOnboarding
          : hasSeenOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
      darkMode: null == darkMode
          ? _self.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
