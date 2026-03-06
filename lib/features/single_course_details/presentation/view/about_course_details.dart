import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';

class AboutCourseDetails extends StatelessWidget {
  const AboutCourseDetails({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiit',
            style: TextStyles.caption2.copyWith(
              color: AppColors.hintTextColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      "Graphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam ",
                  style: TextStyles.caption2.copyWith(
                    color: AppColors.hintTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: "Read More",
                  style: TextStyles.caption2.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
