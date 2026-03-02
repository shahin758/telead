import 'package:flutter/material.dart';
import '../../core/theme/colors.dart';
import '../widgets/curriculum_section.dart';
import '../widgets/enroll_course.dart';
import '../widgets/header_info.dart';
import '../widgets/tabs_widgets.dart';

class SingleCourseDetailsCurr extends StatelessWidget {
  const SingleCourseDetailsCurr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackcolor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            color: AppColors.blackcolor,
            child: Center(
              child: Icon(
                Icons.play_circle_fill,
                color: AppColors.greycolor,
                size: 80,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Icon(Icons.arrow_back, color: AppColors.back, size: 28),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeaderInfo(),
                          const SizedBox(height: 25),
                          TabsWidgets(),
                          const SizedBox(height: 25),
                          CurriculumSection(),
                        ],
                      ),
                    ),
                  ),
                  EnrollCourse(),
                ],
              ),
            ),
          ),

          Positioned(
            top: (MediaQuery.of(context).size.height * 0.35) - 60,
            right: 30,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.green,
              child: const Icon(
                Icons.video_library_outlined,
                color: AppColors.whitecolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
