import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/input_styles.dart';

class GlobalInputWidget extends StatefulWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final bool? isPassword;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLength;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  const GlobalInputWidget({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines,
    this.controller,
    this.minLines,
    this.maxLength,
    this.inputType,
    this.validator,
    this.inputFormatters,
    this.isPassword,
  }) : super(key: key);

  @override
  State<GlobalInputWidget> createState() => _GlobalInputWidgetState();
}

class _GlobalInputWidgetState extends State<GlobalInputWidget> {
  @override
  Widget build(BuildContext context) {
    bool isSecure = false;
    return TextFormField(
      obscuringCharacter: "*",
      obscureText: widget.isPassword! ? true : false,
      maxLines: widget.maxLines,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.inputType,
      validator: (value) => widget.validator!(value),
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      controller: widget.controller,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffix: widget.isPassword!
            ? GestureDetector(
                onTap: () {
                  setState(() {});
                  isSecure =! isSecure;
                  print(isSecure);
                },
                child: Icon(
                  isSecure
                      // ignore: dead_code
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 19,
                ),
              )
            : null,
        hintText: widget.hintText,
        border: InputStyleWidget.inputBorder,
        focusedBorder: InputStyleWidget.inputBorder,
      ),
    );
  }
}
