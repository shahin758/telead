
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Graphic Design",
              style: TextStyles.body.copyWith(
                color: AppColors.accentColor,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Spacer(),
            SvgPicture.asset(AppImages.rate),
            Text(
              "4.2",
              style: TextStyles.body.copyWith(
                color: AppColors.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        Gap(8),
        Text(
          "Design Principles: Organizing ..",
          style: TextStyles.body.copyWith(
            color: AppColors.blackColor,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
        Gap(10),
        Row(
          children: [
            SvgPicture.asset(AppImages.lec),
            Gap(6),
            Text(
              "21 class",
              style: TextStyles.caption2.copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w700
              ),
            ),
            Gap(8),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                color: AppColors.blackColor,
                thickness: 2,
              ),
            ),
            Gap(8),
            SvgPicture.asset(AppImages.hrs),
            Gap(6),
            Text(
              "42 hours",
              style: TextStyles.caption2.copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w600
              ),
            ),
            Spacer(),
            Text(
              "\$28",
              style: TextStyles.title.copyWith(
                color: AppColors.primaryColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
