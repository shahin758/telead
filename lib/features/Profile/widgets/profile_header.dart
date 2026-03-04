import 'package:flutter/material.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xff0C8A7B),
                width: 2.5,
              ),
            ),
            child: const CircleAvatar(
              radius: 45,
              backgroundColor: AppColors.greycolor,
              backgroundImage: AssetImage(AppImages.profileimage),
              
            ),
          ),

          Positioned(
            bottom: -2,
            right: -2,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.backgroundcolor,
                borderRadius: BorderRadius.circular(8), 
                border: Border.all(
                  color: const Color(0xff0C8A7B),
                  width: 2,
                ),
              ),
              child: Image.asset(
                AppImages.image,
                width: 14,
                height: 14,
                color: const Color(0xff0C8A7B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}