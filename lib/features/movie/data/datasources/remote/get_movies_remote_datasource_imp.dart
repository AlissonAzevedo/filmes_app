import 'package:dartz/dartz.dart';
import 'package:filmes_app/core/domain/services/http_service.dart';
import 'package:filmes_app/core/utils/apis.utils.dart';
import 'package:filmes_app/features/movie/data/datasources/get_movies_datasource.dart';
import 'package:filmes_app/features/movie/data/dtos/movie_dto.dart';
import 'package:filmes_app/features/movie/domain/entities/movie_entity.dart';

class GetMoviesRemoteDatasourceImp implements GetMoviesDataSource {
  final HttpService _httpService;
  GetMoviesRemoteDatasourceImp(this._httpService);

  @override
  Future<Either<Exception, MovieEntity>> call() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      var result = await _httpService.get(API.REQUEST_MOVIE_LIST);
      return Right(MovieDto.fromJson(result.data));
    } catch (e) {
      return Left(Exception('Falha no datasource'));
    }
  }
}
