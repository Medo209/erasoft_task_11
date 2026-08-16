import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FormFieldValidator<String>? validator;


  const CustomTextField({
    super.key,
    required this.label,
    required this.labelColor,
    required this.fontSize,
    this.validator,
    required this.fontWeight,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },

      validator: validator,

      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: labelColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
