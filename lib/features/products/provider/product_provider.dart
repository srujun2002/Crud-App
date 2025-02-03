import 'package:assesment/core/models/product_model.dart';
import 'package:assesment/core/repository/product_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
FutureOr<List<Product>> product(ProductRef ref) {
  final result = ref.read(productRepositoryProvider).getProducts();
  return result;
}
