import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_course_details/data/model/curriculcum_details_model.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: details.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(details[index].image),
          title: Text(
            details[index].title,
            style: TextStyles.caption1.copyWith(fontSize: 14),
          ),
          subtitle: Text(
            details[index].subTitle,
            style: TextStyles.caption2.copyWith(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
          trailing: SvgPicture.asset(AppImages.play),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
