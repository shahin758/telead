import 'package:flutter/material.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color:AppColors.green, width: 2.5),

          ),
          child: const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(AppImages.profileimage),
              
            ),
        ),
        
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: AppColors.whitecolor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                  color: AppColors.green,
                  width: 2,
                ),
          ),
          child: Image.asset(AppImages.image)
        )
      ],
    );
  }
}