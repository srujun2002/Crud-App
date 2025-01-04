// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$singleProductHash() => r'8815ab2a7f58acc932cf74197082122abd7305b7';

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

/// See also [singleProduct].
@ProviderFor(singleProduct)
const singleProductProvider = SingleProductFamily();

/// See also [singleProduct].
class SingleProductFamily extends Family<AsyncValue<Product>> {
  /// See also [singleProduct].
  const SingleProductFamily();

  /// See also [singleProduct].
  SingleProductProvider call(
    int id,
  ) {
    return SingleProductProvider(
      id,
    );
  }

  @override
  SingleProductProvider getProviderOverride(
    covariant SingleProductProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'singleProductProvider';
}

/// See also [singleProduct].
class SingleProductProvider extends AutoDisposeFutureProvider<Product> {
  /// See also [singleProduct].
  SingleProductProvider(
    int id,
  ) : this._internal(
          (ref) => singleProduct(
            ref as SingleProductRef,
            id,
          ),
          from: singleProductProvider,
          name: r'singleProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleProductHash,
          dependencies: SingleProductFamily._dependencies,
          allTransitiveDependencies:
              SingleProductFamily._allTransitiveDependencies,
          id: id,
        );

  SingleProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Product> Function(SingleProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleProductProvider._internal(
        (ref) => create(ref as SingleProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Product> createElement() {
    return _SingleProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleProductProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SingleProductRef on AutoDisposeFutureProviderRef<Product> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SingleProductProviderElement
    extends AutoDisposeFutureProviderElement<Product> with SingleProductRef {
  _SingleProductProviderElement(super.provider);

  @override
  int get id => (origin as SingleProductProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
