import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';

class TabsWidgets extends StatelessWidget {
  const TabsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.backgroundcolor),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding:  EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.box,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "About",
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.blackcolor,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Curriculum",
                style: TextStyles.caption1.copyWith(
                  color: AppColors.blackcolor,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
