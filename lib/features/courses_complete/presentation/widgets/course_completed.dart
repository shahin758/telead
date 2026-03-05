import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/courses_complete/presentation/widgets/courses_card_list.dart';

class CompletedCourse extends StatefulWidget {
  const CompletedCourse({super.key, required this.category});
  final String category;

  @override
  State<CompletedCourse> createState() => _CompletedCourseState();
}

class _CompletedCourseState extends State<CompletedCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
        body: Column(
           children: [
              CoursesCardList()
           ],
        ),
    );
  }
}