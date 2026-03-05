import 'package:flutter/material.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/courses/widgets/course_card.dart';
import 'package:telead/features/courses/widgets/online_course_tabs.dart';
import 'package:telead/features/mentor%20list/widgets/mentors_result.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Online Courses",
                style: TextStyle(
                  color: AppColors.back,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                Container(
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffE0E6F2),
                        blurRadius: 15,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppImages.searche),
                      ),

                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Graphic Design",
                          style: TextStyle(
                            color: Color(0xffA0A4AB),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.tune,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                const OnlineCourseTab(),

                const SizedBox(height: 20),

                const MentorsResultRow(),

                const SizedBox(height: 20),
                Column(
                  children: [
                    CourseCard(path: AppImages.course_1),
                    CourseCard(path: AppImages.course_2),
                    CourseCard(path: AppImages.course_3),
                    CourseCard(path: AppImages.course_4),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
