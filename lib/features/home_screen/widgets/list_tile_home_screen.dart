import 'package:flutter/material.dart';

import '../../../core/functions/navigation.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/text_style.dart';
import '../../category/page/category_screen.dart';

class ListTileHomeScreen extends StatelessWidget {
  const ListTileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Categories',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              pushTo(context, CategoryScreen());
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
