import 'package:dartz/dartz.dart';

import '../../../shared/data/failures.dart';
import '../../../shared/typedefs/future_result.dart';
import '../../domain/entities/movies.dart';
import '../../domain/usecases/get_movies_list_usecase.dart';
import '../datasources/movies_datasource.dart';

class MoviesRepository implements GetMoviesListUsecase {
  MoviesRepository({
    required this.datasource,
  });

  final MoviesDatasource datasource;

  @override
  FutureResult<List<Movies>> getMoviesList() async {
    try {
      final result = await datasource.getMoviesList();

      return Right(result);
    } catch (error) {
      return Left(Failure(exception: error));
    }
  }
}
