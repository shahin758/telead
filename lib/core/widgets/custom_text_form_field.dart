import 'package:flutter/material.dart';

import '../theme/colors.dart';

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
    this.suffixIcon,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withValues(alpha: (0.1)),
                  blurRadius: 12,
                  offset: Offset(0, 3),
                ),
              ],
            ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          
        ),
        
        keyboardType: keyboardType,
        readOnly: readOnly,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        textInputAction: TextInputAction.next,
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
        focusNode: focusNode,
      ),
    );
  }
}
