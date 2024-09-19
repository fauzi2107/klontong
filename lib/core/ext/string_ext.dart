import 'package:intl/intl.dart';

extension StringExt on String {
  /// String with currency format include total of decimal [decimalDigits]
  String idr({
    int decimalDigits = 0,
    bool useSymbol = true
  }) {
    final amount = double.tryParse(this) ?? 0;

    return NumberFormat.simpleCurrency(
        locale: 'id_ID',
        decimalDigits: (amount % 1) == 0 ? 0 : decimalDigits,
        name: useSymbol ? 'Rp ' : ''
    ).format(double.tryParse(this) ?? '');
  }

  /// double value after removing currency or throw exception
  double get numberOnly {
    try {
      return double.tryParse(replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
    } catch (err) {
      throw Exception('Value unidentified "$this"');
    }
  }
}