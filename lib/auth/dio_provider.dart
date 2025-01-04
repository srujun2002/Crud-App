import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider.autoDispose((ref) => Dio(
      BaseOptions(baseUrl: "https://app-7zwe7axrhq-uc.a.run.app/v1"),
    )..config(ref));

extension DioExtension on Dio {
  void config(Ref ref) {
    interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
  }
}
