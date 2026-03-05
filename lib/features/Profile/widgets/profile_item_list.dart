import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'profile_model.dart';
import 'profile_header.dart';

class ProfileItemList extends StatelessWidget {
  final ProfileModel profile;
  const ProfileItemList({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          padding: const EdgeInsets.only(top: 60, bottom: 20),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    profile.name,
                    style: const TextStyle(
                      color: AppColors.back,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    profile.email,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  for (var i = 0; i < profileItems.length; i++) ...[
                    _buildItem(context, profileItems[i]),
                    if (i != profileItems.length - 1)
                      const SizedBox(height: 8),
                  ],
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          top: 0,
          child: ProfileHeader(),
        ),
      ],
    );
  }

  Widget _buildItem(BuildContext context, ProfileItem item) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          pushTo(context, item.page);
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              if (item.image != null)
                Image.asset(
                  item.image!,
                  width: 22,
                  height: 22,
                  color: AppColors.back,
                ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              if (item.title == "Language")
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    profile.language,
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.back,
              ),
            ],
          ),
        ),
      ),
    );
  }
}