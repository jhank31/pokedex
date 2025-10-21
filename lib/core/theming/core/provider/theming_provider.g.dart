// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theming_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template theme_provider}
/// Provider for the theme
/// {@endtemplate}

@ProviderFor(Theming)
const themingProvider = ThemingProvider._();

/// {@template theme_provider}
/// Provider for the theme
/// {@endtemplate}
final class ThemingProvider extends $NotifierProvider<Theming, AppThemes> {
  /// {@template theme_provider}
  /// Provider for the theme
  /// {@endtemplate}
  const ThemingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'themingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$themingHash();

  @$internal
  @override
  Theming create() => Theming();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppThemes value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppThemes>(value),
    );
  }
}

String _$themingHash() => r'8e4a7a089aed3b2b3313e19771054e63ab021e5a';

/// {@template theme_provider}
/// Provider for the theme
/// {@endtemplate}

abstract class _$Theming extends $Notifier<AppThemes> {
  AppThemes build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppThemes, AppThemes>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AppThemes, AppThemes>, AppThemes, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
