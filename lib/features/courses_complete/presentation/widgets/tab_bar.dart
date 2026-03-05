// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/courses_complete/presentation/widgets/course_completed.dart';
import 'package:telead/features/courses_complete/presentation/widgets/ongoing_course.dart';

class TabBarCard extends StatefulWidget {
  const TabBarCard({super.key});

  @override
  State<TabBarCard> createState() => _TabBarCardState();
}

class _TabBarCardState extends State<TabBarCard> {
  int currentIndex = 0;
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ButtonsTabBar(
                    decoration: BoxDecoration(
                      color: AppColors.bgTab,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    unselectedDecoration: BoxDecoration(
                      color: AppColors.unselectBg,
                      borderRadius: BorderRadius.circular(60), 
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 27,
                      vertical: 0,
                    ),
                    buttonMargin: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 0,
                    ),
                    labelStyle: TextStyles.caption1.copyWith(
                      color: AppColors.backgroundcolor,
                    ),
                    unselectedLabelStyle: TextStyles.caption1.copyWith(
                      color: AppColors.blackColor,
                    ),
                    tabs: [
                      Tab(text: "Completed"),
                      Tab(text: "Ongoing"),
                    ],
                  ),
                ),
                const Gap(20),
                const Expanded(
                  child: TabBarView(
                    children: [
                      CompletedCourse(category: "Completed"),
                      OngoingCourse(category: "Ongoing"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
