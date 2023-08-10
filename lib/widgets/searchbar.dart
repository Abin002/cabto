import 'package:flutter/material.dart';

class SearchBarField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSubmitted;
  final Color backgroundColor;
  final Widget? prefixIcon;
  final String? labelText;
  final String? hinttextt;
  final TextInputType? keytype;

  const SearchBarField({
    Key? key,
    this.hinttextt,
    required this.controller,
    this.onSubmitted,
    required this.backgroundColor,
    this.prefixIcon,
    this.labelText,
    this.keytype,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keytype,
      controller: controller,
      onFieldSubmitted: (_) {
        if (onSubmitted != null) {
          onSubmitted!();
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        prefixIcon: prefixIcon ?? const Icon(Icons.search),
        prefixIconColor: Colors.black,
        disabledBorder: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: backgroundColor,
        hintText: hinttextt,
        contentPadding: const EdgeInsets.all(12.0),
      ),
    );
  }
}
