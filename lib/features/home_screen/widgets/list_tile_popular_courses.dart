import 'package:flutter/material.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/text_style.dart';

class ListTilePopularCourses extends StatelessWidget {
  const ListTilePopularCourses({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: onPressed,
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
