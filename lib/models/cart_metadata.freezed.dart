// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartMetadata _$CartMetadataFromJson(Map<String, dynamic> json) {
  return _CartMetadata.fromJson(json);
}

/// @nodoc
mixin _$CartMetadata {
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this CartMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartMetadataCopyWith<CartMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartMetadataCopyWith<$Res> {
  factory $CartMetadataCopyWith(
          CartMetadata value, $Res Function(CartMetadata) then) =
      _$CartMetadataCopyWithImpl<$Res, CartMetadata>;
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class _$CartMetadataCopyWithImpl<$Res, $Val extends CartMetadata>
    implements $CartMetadataCopyWith<$Res> {
  _$CartMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartMetadataImplCopyWith<$Res>
    implements $CartMetadataCopyWith<$Res> {
  factory _$$CartMetadataImplCopyWith(
          _$CartMetadataImpl value, $Res Function(_$CartMetadataImpl) then) =
      __$$CartMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$$CartMetadataImplCopyWithImpl<$Res>
    extends _$CartMetadataCopyWithImpl<$Res, _$CartMetadataImpl>
    implements _$$CartMetadataImplCopyWith<$Res> {
  __$$CartMetadataImplCopyWithImpl(
      _$CartMetadataImpl _value, $Res Function(_$CartMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$CartMetadataImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartMetadataImpl implements _CartMetadata {
  _$CartMetadataImpl({required this.productId, required this.quantity});

  factory _$CartMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartMetadataImplFromJson(json);

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartMetadata(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartMetadataImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  /// Create a copy of CartMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartMetadataImplCopyWith<_$CartMetadataImpl> get copyWith =>
      __$$CartMetadataImplCopyWithImpl<_$CartMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartMetadataImplToJson(
      this,
    );
  }
}

abstract class _CartMetadata implements CartMetadata {
  factory _CartMetadata(
      {required final int productId,
      required final int quantity}) = _$CartMetadataImpl;

  factory _CartMetadata.fromJson(Map<String, dynamic> json) =
      _$CartMetadataImpl.fromJson;

  @override
  int get productId;
  @override
  int get quantity;

  /// Create a copy of CartMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartMetadataImplCopyWith<_$CartMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
