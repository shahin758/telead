import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_mentor_details/presentation/widgets/contact_section.dart';
import 'package:telead/features/single_mentor_details/presentation/widgets/profile_instructor.dart';
import 'package:telead/features/single_mentor_details/presentation/view/mentor_courses.dart';
import 'package:telead/features/single_mentor_details/presentation/view/mentor_ratings.dart';

class SingleMentorDetails extends StatelessWidget {
  const SingleMentorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Column(
                children: [
                  const ProfileInstructor(),
                  const Gap(18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "26",
                        style: TextStyles.body.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "15800",
                        style: TextStyles.body.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "8750",
                        style: TextStyles.body.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Courses", style: TextStyles.caption2),
                      Text("Students", style: TextStyles.caption2),
                      Text("Ratings", style: TextStyles.caption2),
                    ],
                  ),

                  const Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: ContactSection(
                          text: "Follow",
                          bgColor: AppColors.unselectBg,
                          colorText: AppColors.blackColor,
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: ContactSection(
                          text: "Message",
                          bgColor: AppColors.primaryColor,
                          colorText: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Gap(20),
            Container(
              margin: EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Text(
                      "Sed quanta s alias nunc tantum possitne tanta Nec vero sum nescius esse utilitatem in historia non modo voluptatem.",
                      style: TextStyles.body.copyWith(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const Gap(20),
                    TabBar(
                      indicator: BoxDecoration(color: AppColors.unselectBg),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      labelColor: AppColors.blackColor,
                      unselectedLabelColor: AppColors.blackColor,
                      labelStyle: TextStyles.body.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      tabs: const [
                        Tab(text: "Courses"),
                        Tab(text: "Ratings"),
                      ],
                    ),

                    // TabBarView
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: [
                          MentorCourses(category: "Courses"),
                          MentorRating(category: "Ratings"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
