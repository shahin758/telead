import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/inbox/data/inbox_calls_model.dart';

class InboxCallsList extends StatelessWidget {
  const InboxCallsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(thickness: 1),
      itemCount: call.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: CircleAvatar(
            backgroundColor: AppColors.blackColor,
            radius: 28,
            child: SvgPicture.asset(AppImages.graphicDesign),
          ),
          title: Text(
            call[index].name,
            style: TextStyles.body.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(call[index].icon, width: 16, height: 16),
              SizedBox(width: 6),
              Flexible(
                child: Text(
                  call[index].statusCall,
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                height: 14,
                width: 1.5,
                color: AppColors.blackColor,
              ),
              Flexible(
                // ✅
                child: Text(
                  call[index].date,
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          trailing: SvgPicture.asset(AppImages.call, width: 24, height: 24),
        );
      },
    );
  }
}
