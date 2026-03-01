import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';
import 'package:telead/features/pages/register_now.dart';

class Textspan extends StatelessWidget {
  const Textspan({super.key, required this.text, required this.text2});
final String text;
final String text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text2,
            style: TextStyles.caption2.copyWith(
              color: AppColors.greycolor,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w700,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: () {
                pushReplacement(context, RegisterNow());
              },
              child: Text(
                text,
                style: TextStyles.caption1.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Mulish',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
