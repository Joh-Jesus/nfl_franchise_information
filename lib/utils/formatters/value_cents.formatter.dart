import 'package:currency_formatter/currency_formatter.dart';

String formatString(String value) {
  CurrencyFormat settings = const CurrencyFormat(
    code: 'brl',
    symbol: 'R\$',
    symbolSide: SymbolSide.left,
    thousandSeparator: '.',
    decimalSeparator: ',',
    symbolSeparator: ' ',
  );
  return CurrencyFormatter.format(value, settings);
}
