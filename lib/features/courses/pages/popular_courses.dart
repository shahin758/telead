import 'package:flutter/material.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/theme/colors.dart';
import '../widgets/course_card.dart';

import '../../../core/theme/text_style.dart' show TextStyles;

class PopularCourses extends StatelessWidget {
  const PopularCourses({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "All",
      "Graphic Design",
      "3D Design",
      "Arts & Humanities",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular Courses",
          style: TextStyles.title.copyWith(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        leadingWidth: 30,
      ),
      body: DefaultTabController(
        length: categories.length,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AppColors.green,
                dividerColor: Colors.transparent,
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: AppColors.blackColor,
                isScrollable: true,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.green,
                ),
                tabs: categories.map((category) {
                  return Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      child: Text(
                        category,
                        style: TextStyles.title.copyWith(fontSize: 13),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CourseCard(path: AppImages.course_1),
                  CourseCard(path: AppImages.course_2),
                  CourseCard(path: AppImages.course_3),
                  CourseCard(path: AppImages.course_4),
                  CourseCard(path: AppImages.course_4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
