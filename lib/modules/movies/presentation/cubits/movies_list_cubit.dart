import 'package:cinetopia_flutter/modules/movies/domain/usecases/get_movies_list_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/data/failures.dart';
import '../../../shared/utils/status.dart';
import '../../domain/entities/movies.dart';
import '../../movies_navigator.dart';

part 'movies_list_state.dart';

class MoviesListCubit extends Cubit<MoviesListState> {
  MoviesListCubit({
    required MoviesNavigator moviesNavigator,
    required GetMoviesListUsecase getMoviesListUsecase,
  })  : _moviesNavigator = moviesNavigator,
        _getMoviesListUsecase = getMoviesListUsecase,
        super(
          const MoviesListState(),
        );

  final MoviesNavigator _moviesNavigator;
  final GetMoviesListUsecase _getMoviesListUsecase;

  // Actions
  void onInit() {}
}
