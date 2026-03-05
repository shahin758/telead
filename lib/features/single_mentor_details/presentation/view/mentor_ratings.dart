import 'package:flutter/material.dart';
import 'package:telead/features/single_mentor_details/presentation/widgets/mentor_rating_courses_card.dart';

class MentorRating extends StatelessWidget {
  const MentorRating({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(top: 16),
      child: MentorListRatingListSection(),
    );
  }
}
