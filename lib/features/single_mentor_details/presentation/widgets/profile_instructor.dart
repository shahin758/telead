
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';

class ProfileInstructor extends StatelessWidget {
  const ProfileInstructor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(AppImages.profile2),
          ),
        ),
        Text(
          "Christopher J. Levine",
          style: TextStyles.body.copyWith(
            color: AppColors.blackColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        Gap(4),
        Text(
          "Graphic Designer At Google",
          style: TextStyles.caption2.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
