import 'package:assesment/auth/dio_provider.dart';
import 'package:assesment/models/product_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'category_repo.g.dart';

final categoryRepoProvider =
    Provider((ref) => CategoryRepository(ref.read(dioProvider)));

@RestApi()
abstract class CategoryRepository {
  factory CategoryRepository(Dio dio) = _CategoryRepository;

  @GET("https://fakestoreapi.com/products/categories")
  Future<List<String>> list();
  @GET("https://fakestoreapi.com/products/{id}")
  Future<Product> getProduct(@Path("id") int id);
  @GET("https://fakestoreapi.com/products")
  Future<List<Product>> listProduct();
}
