import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/widgets/lessons_widgets.dart';
import 'package:telead/features/widgets/textspan.dart';

class CurriculumSection extends StatelessWidget {
  const CurriculumSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Textspan(text: 'Introduction', text2: 'Section 01  -'),
            Text(
              "25 Mins",
              style: TextStyle(
                color: AppColors.offer,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        LessonsWidgets(
          num: "01",
          title: "Why Using Graphic De..",
          time: "15 Mins",
        ),
        const SizedBox(height: 15),
        LessonsWidgets(
          num: "02",
          title: "Setup Your Graphic De..",
          time: "10 Mins",
        ),
      ],
    );
  }
}
