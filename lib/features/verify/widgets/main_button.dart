import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const MainButton({super.key, this.onPressed , required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
            const Spacer(),

          Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.backgroundcolor,
              ),
            ),

            const Spacer(),

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