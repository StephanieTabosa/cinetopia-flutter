part of 'movies_details_cubit.dart';

class MoviesDetailsState extends Equatable {
  const MoviesDetailsState({
    this.movieDetailStatus = Status.initial,
    this.failure,
  });

  final Status movieDetailStatus;
  final Failure? failure;

  @override
  List<Object?> get props => [
        movieDetailStatus,
        failure,
      ];

  MoviesDetailsState copyWith({
    Status? movieDetailStatus,
    Failure? failure,
  }) {
    return MoviesDetailsState(
      movieDetailStatus: movieDetailStatus ?? this.movieDetailStatus,
      failure: failure ?? this.failure,
    );
  }
}
