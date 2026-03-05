import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/inbox/data/inbox_chat_model.dart';

class InboxChatList extends StatelessWidget {
  const InboxChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(thickness: 1),
      itemCount: chat.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: CircleAvatar(
            backgroundColor: AppColors.blackColor,
            radius: 28,
            child: SvgPicture.asset(AppImages.graphicDesign),
          ),
          title: Text(
            chat[index].name,
            style: TextStyles.body.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            chat[index].massage,
            style: TextStyles.subtitle.copyWith(
              color: AppColors.greyColor,
              fontSize: 14,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(chat[index].icon, width: 20, height: 20),
              SizedBox(height: 4),
              Text(
                chat[index].time,
                style: TextStyles.subtitle.copyWith(
                  color: AppColors.greyColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
