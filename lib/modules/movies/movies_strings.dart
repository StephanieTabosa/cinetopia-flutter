class MoviesStrings {
  static const home = _HomeStrings();
  static const movies = _MoviesListStrings();
  static const details = _MovieDetailsStrings();
}

class _HomeStrings {
  const _HomeStrings();

  String get description => 'O lugar ideal para buscar, salvar e organizar seus filmes favoritos!';
  String get buttonText => 'Quero começar!';
}

class _MoviesListStrings {
  const _MoviesListStrings();

  String get title => 'Filmes populares';
  String release(String date) => 'Lançamento: $date';
  String get errorMessage => 'Erro ao carregar filmes, volte e tente novamente';
}

class _MovieDetailsStrings {
  const _MovieDetailsStrings();

  String rate(double rate) => 'Classificação: $rate';
}
