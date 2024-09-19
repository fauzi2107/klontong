import '../../ui_export.dart';

class MyField extends StatelessWidget {
  const MyField({super.key,
    required this.controller,
    this.label,
    this.hint,
    this.margin,
    this.isRequired = true,
    this.prefix,
    this.isObscure = false,
    this.inputType,
    this.inputFormatters,
    this.prefixIcon,
    this.inputAction,
    this.onSubmit,
    this.readOnly = false,
    this.maxLines = 1,
    this.onChanged
  });

  final TextEditingController controller;
  final String? label, hint, prefix;
  final EdgeInsets? margin;
  final bool isRequired, isObscure, readOnly;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final TextInputAction? inputAction;
  final Function(String)? onSubmit, onChanged;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16
        ),
        obscureText: isObscure,
        obscuringCharacter: '*',
        enabled: !readOnly,
        maxLines: maxLines,
        minLines: 1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          label: (label??'').isEmpty ? null : Text.rich(TextSpan(
            children: [
              TextSpan(
                text: label
              ),
              if (isRequired)
                const TextSpan(
                  text: '*',
                  style: TextStyle(
                    color: Colors.red,
                  )
                )
            ]
          )),
          labelStyle: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            fontSize: 14
          ),
          hintText: hint,
          hintStyle: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w700,
              fontSize: 14
          ),
          prefixText: prefix,
          prefixIcon: prefixIcon,
        ),
        keyboardType: inputType,
        inputFormatters: inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: inputAction,
        validator: (value) {
          if ((value??'').isEmpty && isRequired) {
            return '${label??''} field must be filled!';
          }
          return null;
        },
        onFieldSubmitted: onSubmit,
        onChanged: onChanged,
      ),
    );
  }
}
