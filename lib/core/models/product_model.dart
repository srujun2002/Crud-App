import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'id', includeFromJson: true, includeToJson: false)
    required int id,
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}
