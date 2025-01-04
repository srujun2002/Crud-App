import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_metadata.freezed.dart';
part 'cart_metadata.g.dart';

@freezed
class CartMetadata with _$CartMetadata {
  factory CartMetadata({
    required int productId,
    required int quantity,
  }) = _CartMetadata;

  factory CartMetadata.fromJson(Map<String, Object?> json) =>
      _$CartMetadataFromJson(json);
  @override
  Map<String, dynamic> toJson() => super.toJson();
}
