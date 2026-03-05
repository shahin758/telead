import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/inbox/presentation/widgets/inbox_calls_list.dart';

class InboxCalls extends StatelessWidget {
  const InboxCalls({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const InboxCallsList(),
    );
  }
}