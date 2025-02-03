import 'package:assesment/core/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_product_state.freezed.dart';

@freezed
class WriteProductState with _$WriteProductState {
  const factory WriteProductState({
    required Product product,
    @Default(false) bool loading,
  }) = _WriteProductState;
}
