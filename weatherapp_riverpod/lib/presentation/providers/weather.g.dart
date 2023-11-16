// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchWeatherHash() => r'1f0afd48b6a7e9ee3de35d3b11e0fac64dee0a81';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchWeather].
@ProviderFor(fetchWeather)
const fetchWeatherProvider = FetchWeatherFamily();

/// See also [fetchWeather].
class FetchWeatherFamily extends Family<AsyncValue<Weatherr>> {
  /// See also [fetchWeather].
  const FetchWeatherFamily();

  /// See also [fetchWeather].
  FetchWeatherProvider call(
    String location,
  ) {
    return FetchWeatherProvider(
      location,
    );
  }

  @override
  FetchWeatherProvider getProviderOverride(
    covariant FetchWeatherProvider provider,
  ) {
    return call(
      provider.location,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchWeatherProvider';
}

/// See also [fetchWeather].
class FetchWeatherProvider extends AutoDisposeFutureProvider<Weatherr> {
  /// See also [fetchWeather].
  FetchWeatherProvider(
    String location,
  ) : this._internal(
          (ref) => fetchWeather(
            ref as FetchWeatherRef,
            location,
          ),
          from: fetchWeatherProvider,
          name: r'fetchWeatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchWeatherHash,
          dependencies: FetchWeatherFamily._dependencies,
          allTransitiveDependencies:
              FetchWeatherFamily._allTransitiveDependencies,
          location: location,
        );

  FetchWeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.location,
  }) : super.internal();

  final String location;

  @override
  Override overrideWith(
    FutureOr<Weatherr> Function(FetchWeatherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchWeatherProvider._internal(
        (ref) => create(ref as FetchWeatherRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        location: location,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Weatherr> createElement() {
    return _FetchWeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchWeatherProvider && other.location == location;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchWeatherRef on AutoDisposeFutureProviderRef<Weatherr> {
  /// The parameter `location` of this provider.
  String get location;
}

class _FetchWeatherProviderElement
    extends AutoDisposeFutureProviderElement<Weatherr> with FetchWeatherRef {
  _FetchWeatherProviderElement(super.provider);

  @override
  String get location => (origin as FetchWeatherProvider).location;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
