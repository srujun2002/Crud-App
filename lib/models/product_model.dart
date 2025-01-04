import 'package:assesment/models/product_rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    required num price,
    String? description,
    required String category,
    String? image,
    ProductRating? rating,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
  @override
  Map<String, dynamic> toJson() => super.toJson();
}
