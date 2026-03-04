import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

InputDecoration buildPasswordFormDecoration({
  required String hint,
  required bool obscure,
  required VoidCallback onTap,
}) {
  return InputDecoration(
    hintText: hint, 
    prefixIcon: const Icon(Icons.lock_outline),
    suffixIcon: IconButton(
      icon: Icon(
        obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
      ),
      onPressed: onTap,
    ),
    filled: true,
    fillColor: AppColors.whitecolor,
    contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 1.2,
      ),
    ),
  );
}