import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/courses/pages/courses_list.dart';

class MentorsTabs extends StatelessWidget {
  const MentorsTabs({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              pushTo(context, CoursesList());
            },
            child: Container(
              width: 170,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xffE9EEF6),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "Courses",
                  style: TextStyle(
                    color: AppColors.back,
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
              color: const Color(0xff1E7F74),
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                "Mentors",
                style: TextStyle(
                  color: Colors.white,
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
