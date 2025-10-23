// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template user_settings_provider}
/// Provider that fetches the current user settings.
/// This will be refreshed when the app starts and can be manually refreshed.
/// {@endtemplate}

@ProviderFor(userSettings)
const userSettingsProvider = UserSettingsProvider._();

/// {@template user_settings_provider}
/// Provider that fetches the current user settings.
/// This will be refreshed when the app starts and can be manually refreshed.
/// {@endtemplate}

final class UserSettingsProvider extends $FunctionalProvider<
        AsyncValue<UserSettingsEntity>,
        UserSettingsEntity,
        FutureOr<UserSettingsEntity>>
    with
        $FutureModifier<UserSettingsEntity>,
        $FutureProvider<UserSettingsEntity> {
  /// {@template user_settings_provider}
  /// Provider that fetches the current user settings.
  /// This will be refreshed when the app starts and can be manually refreshed.
  /// {@endtemplate}
  const UserSettingsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userSettingsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userSettingsHash();

  @$internal
  @override
  $FutureProviderElement<UserSettingsEntity> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<UserSettingsEntity> create(Ref ref) {
    return userSettings(ref);
  }
}

String _$userSettingsHash() => r'224cf3eaafc1fd2714baa282cfbfe52b46b96ba6';

/// {@template has_seen_onboarding_provider}
/// Provider that checks if the user has seen the onboarding.
/// This is useful for navigation logic.
/// {@endtemplate}

@ProviderFor(hasSeenOnboarding)
const hasSeenOnboardingProvider = HasSeenOnboardingProvider._();

/// {@template has_seen_onboarding_provider}
/// Provider that checks if the user has seen the onboarding.
/// This is useful for navigation logic.
/// {@endtemplate}

final class HasSeenOnboardingProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  /// {@template has_seen_onboarding_provider}
  /// Provider that checks if the user has seen the onboarding.
  /// This is useful for navigation logic.
  /// {@endtemplate}
  const HasSeenOnboardingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'hasSeenOnboardingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$hasSeenOnboardingHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return hasSeenOnboarding(ref);
  }
}

String _$hasSeenOnboardingHash() => r'ec540cc301ad93a754bdc2b40ba6411380199b28';

/// {@template set_has_seen_onboarding_provider}
/// Provider that sets whether the user has seen the onboarding.
/// {@endtemplate}

@ProviderFor(setHasSeenOnboarding)
const setHasSeenOnboardingProvider = SetHasSeenOnboardingFamily._();

/// {@template set_has_seen_onboarding_provider}
/// Provider that sets whether the user has seen the onboarding.
/// {@endtemplate}

final class SetHasSeenOnboardingProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// {@template set_has_seen_onboarding_provider}
  /// Provider that sets whether the user has seen the onboarding.
  /// {@endtemplate}
  const SetHasSeenOnboardingProvider._(
      {required SetHasSeenOnboardingFamily super.from,
      required bool super.argument})
      : super(
          retry: null,
          name: r'setHasSeenOnboardingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$setHasSeenOnboardingHash();

  @override
  String toString() {
    return r'setHasSeenOnboardingProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as bool;
    return setHasSeenOnboarding(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetHasSeenOnboardingProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setHasSeenOnboardingHash() =>
    r'54e829363a02a802a6da3f0bbf5e4259ed59c36e';

/// {@template set_has_seen_onboarding_provider}
/// Provider that sets whether the user has seen the onboarding.
/// {@endtemplate}

final class SetHasSeenOnboardingFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, bool> {
  const SetHasSeenOnboardingFamily._()
      : super(
          retry: null,
          name: r'setHasSeenOnboardingProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template set_has_seen_onboarding_provider}
  /// Provider that sets whether the user has seen the onboarding.
  /// {@endtemplate}

  SetHasSeenOnboardingProvider call(
    bool value,
  ) =>
      SetHasSeenOnboardingProvider._(argument: value, from: this);

  @override
  String toString() => r'setHasSeenOnboardingProvider';
}

/// {@template set_dark_mode_provider}
/// Provider that sets the dark mode preference.
/// {@endtemplate}

@ProviderFor(setDarkMode)
const setDarkModeProvider = SetDarkModeFamily._();

/// {@template set_dark_mode_provider}
/// Provider that sets the dark mode preference.
/// {@endtemplate}

final class SetDarkModeProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// {@template set_dark_mode_provider}
  /// Provider that sets the dark mode preference.
  /// {@endtemplate}
  const SetDarkModeProvider._(
      {required SetDarkModeFamily super.from, required bool super.argument})
      : super(
          retry: null,
          name: r'setDarkModeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$setDarkModeHash();

  @override
  String toString() {
    return r'setDarkModeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as bool;
    return setDarkMode(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetDarkModeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setDarkModeHash() => r'7452526206c3d2f9d0b021ed42ca2b1c83f867c0';

/// {@template set_dark_mode_provider}
/// Provider that sets the dark mode preference.
/// {@endtemplate}

final class SetDarkModeFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, bool> {
  const SetDarkModeFamily._()
      : super(
          retry: null,
          name: r'setDarkModeProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template set_dark_mode_provider}
  /// Provider that sets the dark mode preference.
  /// {@endtemplate}

  SetDarkModeProvider call(
    bool value,
  ) =>
      SetDarkModeProvider._(argument: value, from: this);

  @override
  String toString() => r'setDarkModeProvider';
}
