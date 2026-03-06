import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/courses_complete/data/model/courses_card_model.dart';
import 'package:telead/features/courses_complete/data/model/courses_card_model.dart';

class CoursesCardList extends StatelessWidget {
  const CoursesCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 16);
        },
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: Image.asset(
                      courses[index].img,
                      fit: BoxFit.cover,
                      width: 120,
                      errorBuilder: (context, error, stackTrace) {
                        return SizedBox(
                          width: 120,
                          child: Icon(Icons.error, color: AppColors.unselectBg),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  courses[index].courseName,
                                  style: TextStyles.body.copyWith(
                                    fontSize: 12,
                                    color: AppColors.accentColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SvgPicture.asset(AppImages.done),
                            ],
                          ),
                          Text(
                            courses[index].title,
                            style: TextStyles.caption2.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10),

                          Row(
                            children: [
                              SvgPicture.asset(AppImages.rate),
                              Text(
                                courses[index].rate,
                                style: TextStyles.caption2.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                child: VerticalDivider(
                                  color: AppColors.blackColor,
                                  thickness: 2,
                                ),
                              ),
                              Text(
                                courses[index].totalHrs,
                                style: TextStyles.caption2.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20, height: 10),

                          index == 1 || index == 2 || index == 3
                              ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                      
                                      "VIEW CERTIFICATE",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.bgTab,
                                        decorationThickness: 1,
                                        color: AppColors.bgTab,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                ],
                              )
                              : Row(
                                  children: [
                                    SvgPicture.asset(AppImages.range),
                                    SizedBox(width: 8),
                                    Text(
                                      courses[index].completelec ?? "93/125",
                                      style: TextStyles.caption2.copyWith(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
