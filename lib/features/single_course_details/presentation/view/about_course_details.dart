import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';

class AboutCourseDetails extends StatefulWidget {
  const AboutCourseDetails({super.key, required this.category});
  final String category;

  @override
  State<AboutCourseDetails> createState() => _AboutCourseDetailsState();
}

class _AboutCourseDetailsState extends State<AboutCourseDetails> {
  bool isReadMore = true;
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
       Wrap(
  children: [
    Text(
      maxLines: isReadMore ? 3 : null,
      overflow: isReadMore ? TextOverflow.ellipsis : null,
      "Graphic Design n a popular profession l Cur tantas regiones barbarorum maria transmi Et ne nimium beatus est pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam ",
      style: TextStyles.caption2.copyWith(
        color: AppColors.hintTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
    ),
    GestureDetector(
      onTap: () {
        setState(() {
          isReadMore = !isReadMore;
        });
      },
      child: Text(
        isReadMore ? "Read More" : "Read Less",
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryColor,
          decorationThickness: 1,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    ),
  ],
),
        ],
      ),
    );
  }
}
