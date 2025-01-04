import 'package:assesment/models/product_model.dart';
import 'package:assesment/repo/category_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
FutureOr<List<Product>> product(
  ProductRef ref,
) async {
  final res = await ref.read(categoryRepoProvider).listProduct();
  return res;
}
