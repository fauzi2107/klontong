import 'package:klontong/ui_export.dart';

class MoneyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(oldValue, newValue) {
    if (newValue.text.isEmpty) return newValue;


    return newValue.copyWith();
  }
}