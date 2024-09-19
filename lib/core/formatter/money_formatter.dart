import 'package:klontong/core/ext/string_ext.dart';

import '../../ui_export.dart';

class MoneyFormatter extends TextInputFormatter {
  final bool isUseSymbol;

  MoneyFormatter({this.isUseSymbol = false});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // add condition if isUseSymbol true and user try to remove symbol Rp
    if (isUseSymbol &&
        oldValue.text.isNotEmpty &&
        !newValue.text.contains('Rp ')) {
      return oldValue;
    }

    if (newValue.text.isEmpty) {
      var number = "0";
      return newValue.copyWith(
          text: number.toString(),
          selection: newValue.selection.copyWith(
              baseOffset: number.toString().length,
              extentOffset: number.toString().length));
    }

    var number = newValue.text.numberOnly.toInt();

    var convertedText = '$number'.idr(useSymbol: isUseSymbol);
    return newValue.copyWith(
        text: convertedText,
        selection: newValue.selection.copyWith(
            baseOffset: convertedText.length,
            extentOffset: convertedText.length));
  }
}