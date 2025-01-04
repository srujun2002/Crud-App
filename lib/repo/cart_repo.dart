import 'package:assesment/auth/dio_provider.dart';
import 'package:assesment/models/cart_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_repo.g.dart';

final cartRepoProvider =
    Provider((ref) => CartRepository(ref.read(dioProvider)));

@RestApi()
abstract class CartRepository {
  factory CartRepository(Dio dio) = _CartRepository;

  @POST('https://fakestoreapi.com/carts')
  Future<String> create(@Body() Cart cart);

  @GET('https://fakestoreapi.com/carts')
  Future<Cart> getcart();
}
