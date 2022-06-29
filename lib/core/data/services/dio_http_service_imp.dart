import 'package:dio/dio.dart';
import 'package:filmes_app/core/domain/services/http_service.dart';

class DioHttpServiceImp implements HttpService {
  late Dio _dio;
  DioHttpServiceImp() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjNTUxNjUxOTJkNzQxM2U1MGViNjVjNzZlNDBkZDgyMiIsInN1YiI6IjYyYmI5OWQ2ODRmMjQ5MGJmOGNjYjA5MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.5Otffc7efdUBXEGuZ2FWhTvN0ClEKFrT-oRwgbXcIJ8',
        },
      ),
    );
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
