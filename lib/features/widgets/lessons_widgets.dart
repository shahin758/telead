import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';

class LessonsWidgets extends StatelessWidget {
  const LessonsWidgets({
    super.key,
    required this.num,
    required this.title,
    required this.time,
  });

  final String num;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.backgroundcolor,
            child: Text(
              num,
              style: TextStyles.caption2.copyWith(
                fontFamily: 'Jost',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyles.caption1.copyWith(
                  color: AppColors.blackcolor,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                time,
                style: TextStyles.caption2.copyWith(
                  color: AppColors.greycolor,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.play_circle_fill, color: AppColors.offer, size: 30),
        ],
      ),
    );
  }
}
