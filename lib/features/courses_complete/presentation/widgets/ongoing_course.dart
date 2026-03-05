import 'package:flutter/material.dart';
import 'package:telead/features/courses_complete/presentation/widgets/courses_card_list.dart';

class OngoingCourse extends StatefulWidget {
  const OngoingCourse({super.key, required this.category});
  final String category;

  @override
  State<OngoingCourse> createState() => _OngoingCourseState();
}

class _OngoingCourseState extends State<OngoingCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          children: [
             CoursesCardList(),
          ],
       ),
    );
  }
}
