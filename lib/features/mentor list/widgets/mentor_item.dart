// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class MentorItem extends StatelessWidget {
  final String name;
  final String image;

  const MentorItem({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),

      splashColor: AppColors.back.withOpacity(0.05),
      highlightColor: AppColors.back.withOpacity(0.03),

      onTap: () {
        print("Pressed on $name");
      },
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.back,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "3D Design",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            thickness: 2,
            color: AppColors.box,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}