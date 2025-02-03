import 'package:assesment/core/models/product_model.dart';
import 'package:assesment/core/provider/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';

// import 'package:retrofit/http.dart';

part 'product_repository.g.dart';

final productRepositoryProvider =
    Provider((ref) => ProductRepository(ref.read(dioProvider)));

@RestApi()
abstract class ProductRepository {
  factory ProductRepository(Dio dio) = _ProductRepository;

  @POST('https://fakestoreapi.com/products')
  Future<Product> create(@Body() Product product);

  @PUT('https://fakestoreapi.com/products/{id}')
  Future<Product> update(@Path('id') int id, @Body() Product product);

  @GET('https://fakestoreapi.com/products')
  Future<List<Product>> getProducts();
}
