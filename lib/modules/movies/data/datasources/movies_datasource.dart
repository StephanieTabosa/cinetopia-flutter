import 'package:dio/dio.dart';

import '../../domain/entities/movies.dart';
import '../models/movies_model.dart';

abstract class MoviesDatasource {
  Future<List<Movies>> getMoviesList();
}

class MoviesDatasourceImpl implements MoviesDatasource {
  const MoviesDatasourceImpl({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;
  final String _moviesUrl = 'https://my-json-server.typicode.com/alura-cursos/movie-api/movies';

  @override
  Future<List<Movies>> getMoviesList() async {
    try {
      final response = await _dio.get(_moviesUrl);

      final moviesList = (response.data as List).map((json) {
        return MoviesModel.fromJson(json);
      }).toList();

      return moviesList;
    } catch (error) {
      rethrow;
    }
  }
}
