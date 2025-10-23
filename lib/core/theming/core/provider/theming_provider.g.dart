// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theming_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Theming)
const themingProvider = ThemingProvider._();

final class ThemingProvider extends $NotifierProvider<Theming, AppThemes> {
  const ThemingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'themingProvider',
          isAutoDispose: false,
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

String _$themingHash() => r'd60d5721674876de62154078db6640bb23eda7d6';

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
