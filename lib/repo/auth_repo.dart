import 'package:assesment/auth/dio_provider.dart';
import 'package:assesment/models/auth_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_repo.g.dart';

final authRepoProvider =
    Provider((ref) => AuthRepository(ref.read(dioProvider)));

@RestApi()
abstract class AuthRepository {
  factory AuthRepository(Dio dio) = _AuthRepository;

  @POST('https://fakestoreapi.com/auth/login')
  Future<String> create(@Body() User user);
}
