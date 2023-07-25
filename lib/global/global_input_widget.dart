import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/input_styles.dart';

class GlobalInputWidget extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLength;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  const GlobalInputWidget({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.controller,
    this.minLines,
    this.maxLength,
    this.inputType,
    this.validator,
    this.inputFormatters,
    this.suffixIcon,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      keyboardType: inputType,
      validator: (value) => validator!(value),
      minLines: minLines,
      maxLength: maxLength,
      controller: controller,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffix: suffixIcon,
        hintText: hintText,
        border: InputStyleWidget.inputBorder,
        focusedBorder: InputStyleWidget.inputBorder,
      ),
    );
  }
}
