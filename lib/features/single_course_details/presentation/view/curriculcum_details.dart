import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_course_details/presentation/widgets/custom_btn.dart';
import 'package:telead/features/single_course_details/presentation/widgets/introduction_section.dart';

class CurriculcumDetails extends StatelessWidget {
  const CurriculcumDetails({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Section 01 - ",
                            style: TextStyles.caption1.copyWith(fontSize: 12),
                          ),
                          TextSpan(
                            text: "Introduction",
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "25 Mins",
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                const IntroductionSection(),
                SizedBox(width: 100),
              ],
            ),
          ),
        ),
        const CustomBtn(),
      ],
    );
  }
}
