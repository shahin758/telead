import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(""),
          Text(
            "Enroll Course - \$55",
            style: TextStyles.body.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SvgPicture.asset(AppImages.arrow),
        ],
      ),
    );
  }
}
