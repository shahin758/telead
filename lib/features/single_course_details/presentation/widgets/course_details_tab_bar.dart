import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_course_details/presentation/view/about_course_details.dart';
import 'package:telead/features/single_course_details/presentation/view/curriculcum_details.dart';

class CourseDetailsTabBarCard extends StatelessWidget {
  const CourseDetailsTabBarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F9FF),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColors.unselectBg, 
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              labelColor: AppColors.blackColor, 
              unselectedLabelColor:AppColors.blackColor,
              labelStyle: TextStyles.body.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyles.body.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              tabs: const [
                Tab(text: "About"),
                Tab(text: "Curriculum"),
              ],
            ),
          ),
          
          const Gap(20),
          SizedBox(
            height: 240,
            child: TabBarView(
              children: [
                AboutCourseDetails(category: "About"),
                CurriculcumDetails(category: "Curriculum"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
