import 'package:flutter/material.dart';

import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.spacing = 10,
  });
  final String text;
  final Function() onPressed;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:350,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
         padding: const EdgeInsets.all(10),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(width: 24),
            Text(
              text,
              style: TextStyles.body.copyWith(
                color: AppColors.whitecolor,
                fontFamily: 'Jost',
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
