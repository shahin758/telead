import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_mentor_details/data/model/mentor_courses_model.dart';

class MentorCoursesCard extends StatelessWidget {
  const MentorCoursesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: mentor.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  mentor[index].img,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 120,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 120,
                      height: 100,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            mentor[index].courseName,
                            style: TextStyles.body.copyWith(
                              fontSize: 12,
                              color: AppColors.accentColor,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SvgPicture.asset(mentor[index].save),
                      ],
                    ),
                    SizedBox(width: 4),
                    Text(
                      mentor[index].title,
                      style: TextStyles.caption2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(width: 8),
                    Row(
                      children: [
                        Text(
                          mentor[index].price,
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          mentor[index].discount,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 15,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 4),
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.rate, width: 14, height: 14),
                        SizedBox(width: 4),
                        Text(
                          mentor[index].rate,
                          style: const TextStyle(fontSize: 12),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          height: 12,
                          width: 1,
                          color: AppColors.blackColor,
                        ),
                        Text(
                          mentor[index].numOfStd,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
