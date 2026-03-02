import 'package:flutter/material.dart';
import '../../core/functions/navigation.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/text_style.dart';
import '../pages/single_course_details_curr.dart';

class ListTilePopularCourses extends StatelessWidget {
  const ListTilePopularCourses({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              pushTo(context, SingleCourseDetailsCurr());
            },
            child: Text(
              'SEE ALL',
              style: TextStyles.caption2.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.blue),
        ],
      ),
    );
  }
}
