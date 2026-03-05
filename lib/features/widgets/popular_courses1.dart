import 'package:flutter/material.dart';
import '../../core/constants/app_images.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/text_style.dart';

class PopularCourses1 extends StatelessWidget {
  const PopularCourses1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 270,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: AppColors.backgroundcolor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.backgroundcolor),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff555E58).withValues(alpha: .1),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.black1),
                SizedBox(height: 4),
                Text(
                  'Graphic Design Advanced',
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        '\$2',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.teal,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.amber),
                      SizedBox(width: 4),
                      Text('4.2', style: TextStyle(fontSize: 13)),
                      SizedBox(width: 16),
                      Icon(
                        Icons.people,
                        size: 16,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text('7830', style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const SizedBox(width: 10),
        itemCount: 3,
      ),
    );
  }
}
