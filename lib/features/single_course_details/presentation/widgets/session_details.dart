import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/single_course_details/data/model/session_details_model.dart';

class SessionDetails extends StatelessWidget {
  const SessionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 26);
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SvgPicture.asset(session[index].icon),
              SizedBox(width: 10),

              Text(
                session[index].text,
                style: TextStyles.body.copyWith(
                  color: AppColors.greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
