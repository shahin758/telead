import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/inbox/presentation/widgets/inbox_chat_list.dart';

class InboxChats extends StatelessWidget {
  const InboxChats({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const InboxChatList(),
    );
  }
}
