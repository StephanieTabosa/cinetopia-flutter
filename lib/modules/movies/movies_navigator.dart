import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/movies_list_page.dart';

class MoviesNavigator {
  const MoviesNavigator();

  void openMoviesList() {
    Modular.to.pushNamed(MoviesListPage.routePath);
  }

  // void openMoviesDetails({
  //   required int movieId,
  // }) {
  //   Modular.to.pushNamed(
  //     MoviesDetailsPage.routePath,
  //     arguments: movieId,
  //   );
  // }
}
