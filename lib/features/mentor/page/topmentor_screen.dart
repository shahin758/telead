import 'package:flutter/material.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/mentor/widgets/mentor_item.dart';
import 'package:telead/features/mentor/widgets/mentor_model.dart';

class TopMentorsScreen extends StatelessWidget {
  const TopMentorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0,
        titleSpacing: 0, 
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Top Mentors",
                style: TextStyle(
                  color: AppColors.back,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: Image.asset(AppImages.searche, width: 24, height: 24),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: topMentors.length,
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            color: AppColors.box,
            thickness: 2,
          ),
        ),
        itemBuilder: (context, index) {
          return MentorItem(mentor: topMentors[index]);
        },
      ),
    );
  }
}