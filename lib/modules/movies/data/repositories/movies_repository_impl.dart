import 'package:cinetopia_flutter/modules/movies/domain/entities/movies.dart';
import 'package:cinetopia_flutter/modules/shared/typedefs/future_result.dart';
import 'package:dartz/dartz.dart';

import '../../../shared/data/failures.dart';
import '../../domain/repositories/movies_repository.dart';
import '../datasources/movies_datasource.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({
    required MoviesDatasource moviesDatasource,
  }) : _moviesDatasource = moviesDatasource;

  final MoviesDatasource _moviesDatasource;

  @override
  FutureResult<List<Movies>> getMoviesList() async {
    try {
      final result = await _moviesDatasource.getMoviesList();

      return Right(result);
    } catch (error) {
      return Left(Failure(exception: error));
    }
  }
}
