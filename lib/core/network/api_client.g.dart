// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template api_client}
/// The API client for the application.
/// {@endtemplate}

@ProviderFor(apiClient)
const apiClientProvider = ApiClientProvider._();

/// {@template api_client}
/// The API client for the application.
/// {@endtemplate}

final class ApiClientProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// {@template api_client}
  /// The API client for the application.
  /// {@endtemplate}
  const ApiClientProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'apiClientProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$apiClientHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return apiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$apiClientHash() => r'82a790c3d41189f5683d5b7e18b80f7d8ca87673';
