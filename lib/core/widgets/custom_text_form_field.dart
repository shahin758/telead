import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.readOnly = false,
    this.onTap,
    this.focusNode,
    this.onChanged,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText, prefixIcon: prefixIcon),
      keyboardType: keyboardType,
      // readOnly: readOnly,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      textInputAction: TextInputAction.next,
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
      focusNode: focusNode,
    );
  }
}
