// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template app_talker_provider}
/// Provider that exposes a global instance of [AppTalker]
/// for logging in the entire application.
/// {@endtemplate}

@ProviderFor(appTalker)
const appTalkerProvider = AppTalkerFamily._();

/// {@template app_talker_provider}
/// Provider that exposes a global instance of [AppTalker]
/// for logging in the entire application.
/// {@endtemplate}

final class AppTalkerProvider
    extends $FunctionalProvider<AppTalker, AppTalker, AppTalker>
    with $Provider<AppTalker> {
  /// {@template app_talker_provider}
  /// Provider that exposes a global instance of [AppTalker]
  /// for logging in the entire application.
  /// {@endtemplate}
  const AppTalkerProvider._(
      {required AppTalkerFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'appTalkerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$appTalkerHash();

  @override
  String toString() {
    return r'appTalkerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<AppTalker> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppTalker create(Ref ref) {
    final argument = this.argument as String;
    return appTalker(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTalker value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppTalker>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppTalkerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appTalkerHash() => r'a8a37a055c6dcb8c4c8392d61beac32914f3eea0';

/// {@template app_talker_provider}
/// Provider that exposes a global instance of [AppTalker]
/// for logging in the entire application.
/// {@endtemplate}

final class AppTalkerFamily extends $Family
    with $FunctionalFamilyOverride<AppTalker, String> {
  const AppTalkerFamily._()
      : super(
          retry: null,
          name: r'appTalkerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template app_talker_provider}
  /// Provider that exposes a global instance of [AppTalker]
  /// for logging in the entire application.
  /// {@endtemplate}

  AppTalkerProvider call(
    String tag,
  ) =>
      AppTalkerProvider._(argument: tag, from: this);

  @override
  String toString() => r'appTalkerProvider';
}
