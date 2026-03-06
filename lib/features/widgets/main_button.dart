import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class MainButtonn extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const MainButtonn({
    super.key,
    this.onPressed,
    required this.text,
    // double ?spacing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            const SizedBox(width: 48),

            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.backgroundcolor,
                  ),
                ),
              ),
            ),

            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                color: AppColors.backgroundcolor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 24,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
