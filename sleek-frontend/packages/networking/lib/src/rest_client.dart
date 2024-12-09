import 'package:dio/dio.dart';
import 'package:networking/src/interceptors/error.dart';
import 'package:networking/src/interceptors/loging.dart';

class RestClient {
  final LoggingInterceptor _loggingInterceptor = LoggingInterceptor();
  final ErrorInterceptor _errorInterceptor = ErrorInterceptor();
  Dio? _dio;
  Dio get dio => _dio!;

  String _token = '';
  String get token => _token;

  RestClient({BaseOptions? options}) {
    _dio = _create(options);
  }

  Dio _create([BaseOptions? options]) {
    Dio dio = Dio(options);

    dio.options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.interceptors..add(
      _errorInterceptor
    )..add(_loggingInterceptor);

    return dio;
  }
}
