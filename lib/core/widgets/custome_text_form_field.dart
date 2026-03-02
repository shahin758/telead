import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.suffixIcon,
    this.hintTextStyle,
    this.onTap,
    this.hasShadow = true,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? hintTextStyle;
  final Function()? onTap;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: hasShadow
            ? [
                BoxShadow(
                  color: AppColors.greycolor.withValues(alpha: 1),
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ]
            : [],
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
