import 'package:dartz/dartz.dart';
import 'package:filmes_app/features/movie/domain/entities/movie_entity.dart';

abstract class GetMoviesUseCase {
  Future<Either<Exception, MovieEntity>> call();
}
