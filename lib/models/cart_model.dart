import 'package:assesment/models/cart_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    required int userId,
    required List<CartMetadata> products,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
  @override
  Map<String, dynamic> toJson() => super.toJson();
}
