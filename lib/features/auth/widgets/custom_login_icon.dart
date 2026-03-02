import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';

class CustomLoginIcon extends StatelessWidget {
  const CustomLoginIcon({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent.withValues(alpha: 0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: IconButton(onPressed: () {}, icon: Image.asset(imagePath)),
    );
  }
}
