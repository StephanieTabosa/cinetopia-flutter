class MoviesStrings {
  static const pixTransaction = _PixTransaction();

  static String get pixKey => 'Chave PIX';

  static String get recipient => 'Beneficiário';

  static String get amount => 'Valor';

  static String get unavailable => 'Indisponível';

  static String get bcbPix => 'br.gov.bcb.pix'.toUpperCase();
}

class _PixTransaction {
  const _PixTransaction();

  String get lastPixTransactionTitle => 'Última transação';

  String get lastPixTransactionSeeAll => 'Ver todas';

  String installments(int installments) => 'em ${installments}x';
}
