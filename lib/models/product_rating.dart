import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_rating.freezed.dart';
part 'product_rating.g.dart';

@freezed
class ProductRating with _$ProductRating {
  factory ProductRating({
    required num rate,
    required num count,
  }) = _ProductRating;

  factory ProductRating.fromJson(Map<String, Object?> json) =>
      _$ProductRatingFromJson(json);
  @override
  Map<String, dynamic> toJson() => super.toJson();
}
