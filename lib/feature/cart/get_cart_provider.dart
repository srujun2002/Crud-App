import 'package:assesment/models/cart_model.dart';
import 'package:assesment/repo/cart_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_cart_provider.g.dart';

@riverpod
FutureOr<Cart> getCart(
  GetCartRef ref,
) async {
  final res = await ref.read(cartRepoProvider).getcart();
  return res;
}
