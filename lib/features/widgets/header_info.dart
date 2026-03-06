import 'package:flutter/material.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/text_style.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Graphic Design",
              style: TextStyles.caption1.copyWith(
                color: AppColors.accentColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              children: const [
                Icon(Icons.star, color: Colors.orange, size: 18),
                Text(" 4.2", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          "Design Principles: Organizing ..",
          style: TextStyles.subtitle.copyWith(
            color: AppColors.text,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Icon(
              Icons.videocam_outlined,
              size: 18,
              color: AppColors.blackColor,
            ),
            Text(
              " 21 Class  |  ",
              style: TextStyle(color: AppColors.blackColor),
            ),
            Icon(Icons.access_time, size: 18, color: AppColors.blackColor),
            Text(" 42 Hours", style: TextStyle(color: AppColors.blackColor)),
            Spacer(),
            Text(
              "\$28",
              style: TextStyles.body.copyWith(
                color: AppColors.offer,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
