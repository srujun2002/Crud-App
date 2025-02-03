// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WriteProductState {
  Product get product => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Create a copy of WriteProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WriteProductStateCopyWith<WriteProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteProductStateCopyWith<$Res> {
  factory $WriteProductStateCopyWith(
          WriteProductState value, $Res Function(WriteProductState) then) =
      _$WriteProductStateCopyWithImpl<$Res, WriteProductState>;
  @useResult
  $Res call({Product product, bool loading});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$WriteProductStateCopyWithImpl<$Res, $Val extends WriteProductState>
    implements $WriteProductStateCopyWith<$Res> {
  _$WriteProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WriteProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of WriteProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WriteProductStateImplCopyWith<$Res>
    implements $WriteProductStateCopyWith<$Res> {
  factory _$$WriteProductStateImplCopyWith(_$WriteProductStateImpl value,
          $Res Function(_$WriteProductStateImpl) then) =
      __$$WriteProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, bool loading});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$WriteProductStateImplCopyWithImpl<$Res>
    extends _$WriteProductStateCopyWithImpl<$Res, _$WriteProductStateImpl>
    implements _$$WriteProductStateImplCopyWith<$Res> {
  __$$WriteProductStateImplCopyWithImpl(_$WriteProductStateImpl _value,
      $Res Function(_$WriteProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WriteProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? loading = null,
  }) {
    return _then(_$WriteProductStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WriteProductStateImpl implements _WriteProductState {
  const _$WriteProductStateImpl({required this.product, this.loading = false});

  @override
  final Product product;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'WriteProductState(product: $product, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteProductStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, loading);

  /// Create a copy of WriteProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteProductStateImplCopyWith<_$WriteProductStateImpl> get copyWith =>
      __$$WriteProductStateImplCopyWithImpl<_$WriteProductStateImpl>(
          this, _$identity);
}

abstract class _WriteProductState implements WriteProductState {
  const factory _WriteProductState(
      {required final Product product,
      final bool loading}) = _$WriteProductStateImpl;

  @override
  Product get product;
  @override
  bool get loading;

  /// Create a copy of WriteProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WriteProductStateImplCopyWith<_$WriteProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
