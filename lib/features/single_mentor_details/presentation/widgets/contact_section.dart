// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.text, required this.bgColor, required this.colorText});

  final String text;
  final Color bgColor, colorText ;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(14),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
        side: BorderSide(color: AppColors.greyColor.withOpacity(0.2)),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyles.body.copyWith(
          color: colorText,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
