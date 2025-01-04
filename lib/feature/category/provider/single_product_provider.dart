import 'package:assesment/models/product_model.dart';
import 'package:assesment/repo/category_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'single_product_provider.g.dart';

@riverpod
FutureOr<Product> singleProduct(
  SingleProductRef ref,
  final int id,
) async {
  final res = await ref.read(categoryRepoProvider).getProduct(id);
  return res;
}
