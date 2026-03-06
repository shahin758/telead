import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_course_details/presentation/widgets/course_details.dart';
import 'package:telead/features/single_course_details/presentation/widgets/course_details_tab_bar.dart';
import 'package:telead/features/single_course_details/presentation/widgets/custom_btn.dart';
import 'package:telead/features/single_course_details/presentation/widgets/list_tile_info.dart';
import 'package:telead/features/single_course_details/presentation/widgets/reviews_section.dart';
import 'package:telead/features/single_course_details/presentation/widgets/session_details.dart';

class SingleCourseDetails extends StatelessWidget {
  const SingleCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.graphicDesign,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CourseDetails(),
                      SizedBox(height: 20),
                      const CourseDetailsTabBarCard(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Instructor",
                        style: TextStyles.body.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InfoListTile(),
                      Divider(thickness: 2, color: AppColors.containerTab),
                      SizedBox(height: 20),
                      Text(
                        "What You’ll Get",
                        style: TextStyles.caption1.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 18,
                        ),
                      ),

                      SessionDetails(),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyles.title.copyWith(fontSize: 18),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "SEE ALL",
                              style: TextStyles.caption2.copyWith(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.primaryColor,
                            size: 14,
                          ),
                        ],
                      ),
                      ReviewsSection(),
                      SizedBox(height: 20),
                      CustomBtn(),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 170,
              right: 30,
              child: SvgPicture.asset(AppImages.vedio, height: 80),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                onPressed: () {
                  pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.whiteColor,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
