// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_mentor_details/presentation/view/single_mentor_details.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushTo(context, SingleMentorDetails());
      },
      child: ListTile(
        leading: 
        Image.asset(AppImages.profile),
        title: Text(
          "William S. Cunningham",
          style: TextStyles.body.copyWith(
            color: AppColors.blackColor,
            fontWeight: FontWeight.w700,
            fontSize: 14
         ),
        ),
        subtitle: Text(
          "Graphic Design",
          style: TextStyles.body.copyWith(
            color: AppColors.greyColor.withOpacity(0.7),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        trailing: SvgPicture.asset(AppImages.chat),
      ),
    );
  }
}
