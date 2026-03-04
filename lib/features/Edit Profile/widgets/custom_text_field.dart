import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final IconData? icon;

  const CustomTextField({
    super.key,
    required this.hint,
    this.controller,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.whitecolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 18),
              const SizedBox(width: 10),
            ],
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}