import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'mentor_model.dart';

class MentorItem extends StatelessWidget {
  final Mentor mentor;

  const MentorItem({super.key, required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), 
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: mentor.image.isEmpty
    ? CircleAvatar(
        backgroundColor: Colors.grey[800],
        radius: 28,
        child: Text(
          mentor.name[0],
          style: TextStyle(
              color: AppColors.backgroundcolor,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
      )
    : CircleAvatar(
        radius: 40, 
        backgroundImage: AssetImage(mentor.image), 
        backgroundColor: Colors.transparent,
      ),
        title: Text(
          mentor.name,
          style: TextStyle(
            color: AppColors.back,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          mentor.specialty,
          style: TextStyle(
            color: AppColors.greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}