import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_mentor_details/presentation/view/mentor_courses.dart';
import 'package:telead/features/single_mentor_details/presentation/view/mentor_ratings.dart';

class MentorTabBar extends StatelessWidget {
  const MentorTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            indicator: BoxDecoration(color: AppColors.unselectBg),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.blackColor,
            unselectedLabelColor: AppColors.blackColor,
            labelStyle: TextStyles.body.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: TextStyles.body.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            tabs: const [
              Tab(text: "Courses"),
              Tab(text: "Ratings"),
            ],
          ),
          SizedBox(
            height: 180,
            child: TabBarView(
              children: [
                MentorCourses(category: "Courses"),
                MentorRating(category: "Ratings"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
