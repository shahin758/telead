import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class OnlineCourseTab extends StatelessWidget {
  const OnlineCourseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 170,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "Courses",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Container(
            width: 170,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.box,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                "Mentors",
                style: TextStyle(
                  color: AppColors.back,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
