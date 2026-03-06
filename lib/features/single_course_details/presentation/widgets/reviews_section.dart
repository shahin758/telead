import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_course_details/data/model/review_section_model.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) =>
          const Divider(thickness: 1, height: 32),
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.zero, 
          leading: CircleAvatar(
            radius: 36,
            backgroundImage: AssetImage(reviews[index].image),
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  reviews[index].name,
                  style: TextStyles.body.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SvgPicture.asset(AppImages.reviewRate),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6),
              Text(
                reviews[index].title,
                style: TextStyles.body.copyWith(
                  color: AppColors.greyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(AppImages.like),
                  SizedBox(width: 6),
                  Text(
                    "578",
                    style: TextStyles.caption2.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 16),
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
    );
  }
}
