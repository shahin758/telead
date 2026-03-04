import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class MentorsResultRow extends StatelessWidget {
  const MentorsResultRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff7D8CAC),
            ),
            children: [
              TextSpan(
                text: 'Result for ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.back
                )
              ),
              TextSpan(
                text: '"3D Design"',
                style: TextStyle(
                  color: Color(0xff246BFD),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: const Color(0xff246BFD).withOpacity(0.08),
          highlightColor: const Color(0xff246BFD).withOpacity(0.05),
          onTap: () {
            print("Pressed Result Button");
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              children: [
                Text(
                  "18 FOUNDS",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff246BFD),
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Color(0xff246BFD),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}