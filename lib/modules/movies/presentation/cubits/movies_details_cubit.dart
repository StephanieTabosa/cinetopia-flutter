import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/data/failures.dart';
import '../../../shared/utils/status.dart';
import '../../movies_navigator.dart';

part 'movies_details_state.dart';

class MoviesDetailsCubit extends Cubit<MoviesDetailsState> {
  MoviesDetailsCubit({
    required MoviesNavigator moviesNavigator,
  })  : _moviesNavigator = moviesNavigator,
        super(
          const MoviesDetailsState(),
        );

  final MoviesNavigator _moviesNavigator;

  // Actions
  void onInit() {}
}
