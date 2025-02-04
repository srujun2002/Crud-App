// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_product_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$writeProductHash() => r'a16420048cf0728008270a202992ec567e2fcce1';

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

abstract class _$WriteProduct
    extends BuildlessAutoDisposeNotifier<WriteProductState> {
  late final Product? product;

  WriteProductState build([
    Product? product,
  ]);
}

/// See also [WriteProduct].
@ProviderFor(WriteProduct)
const writeProductProvider = WriteProductFamily();

/// See also [WriteProduct].
class WriteProductFamily extends Family<WriteProductState> {
  /// See also [WriteProduct].
  const WriteProductFamily();

  /// See also [WriteProduct].
  WriteProductProvider call([
    Product? product,
  ]) {
    return WriteProductProvider(
      product,
    );
  }

  @override
  WriteProductProvider getProviderOverride(
    covariant WriteProductProvider provider,
  ) {
    return call(
      provider.product,
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
  String? get name => r'writeProductProvider';
}

/// See also [WriteProduct].
class WriteProductProvider
    extends AutoDisposeNotifierProviderImpl<WriteProduct, WriteProductState> {
  /// See also [WriteProduct].
  WriteProductProvider([
    Product? product,
  ]) : this._internal(
          () => WriteProduct()..product = product,
          from: writeProductProvider,
          name: r'writeProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$writeProductHash,
          dependencies: WriteProductFamily._dependencies,
          allTransitiveDependencies:
              WriteProductFamily._allTransitiveDependencies,
          product: product,
        );

  WriteProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.product,
  }) : super.internal();

  final Product? product;

  @override
  WriteProductState runNotifierBuild(
    covariant WriteProduct notifier,
  ) {
    return notifier.build(
      product,
    );
  }

  @override
  Override overrideWith(WriteProduct Function() create) {
    return ProviderOverride(
      origin: this,
      override: WriteProductProvider._internal(
        () => create()..product = product,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        product: product,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<WriteProduct, WriteProductState>
      createElement() {
    return _WriteProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WriteProductProvider && other.product == product;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, product.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WriteProductRef on AutoDisposeNotifierProviderRef<WriteProductState> {
  /// The parameter `product` of this provider.
  Product? get product;
}

class _WriteProductProviderElement
    extends AutoDisposeNotifierProviderElement<WriteProduct, WriteProductState>
    with WriteProductRef {
  _WriteProductProviderElement(super.provider);

  @override
  Product? get product => (origin as WriteProductProvider).product;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
