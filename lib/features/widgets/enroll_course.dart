import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';

class EnrollCourse extends StatelessWidget {
  const EnrollCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.offer,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: AppColors.offer.withValues(alpha: 0),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Text(
              "Enroll Course - \$55",
              style: TextStyles.body.copyWith(
                color: AppColors.whitecolor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              margin:  EdgeInsets.only(right: 8),
              padding:  EdgeInsets.all(10),
              decoration:  BoxDecoration(
                color: AppColors.whitecolor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_forward, color: AppColors.offer),
            ),
          ],
        ),
      ),
    );
  }
}
