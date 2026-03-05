import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_mentor_details/data/model/mentor_rating_list_model.dart';

class MentorListRatingListSection extends StatelessWidget {
  const MentorListRatingListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 16);
        },
        itemCount: mentorList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(mentorList[index].image),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      mentorList[index].name,
                      style: TextStyles.body.copyWith(
                        color: AppColors.blackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      
                    ),
                    Spacer(),
                    SvgPicture.asset(AppImages.reviewRate),
                  ],
                ),
                Text(
                  mentorList[index].title,
                  style: TextStyles.body.copyWith(
                    color: AppColors.greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(10),
                Row(
                  children: [
                    SvgPicture.asset(mentorList[index].icon),
                    Gap(4),
                    Text(
                      "578",
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(10),
                    Text(
                      "2 Weeks Agos",
                      style: TextStyles.caption2.copyWith(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}