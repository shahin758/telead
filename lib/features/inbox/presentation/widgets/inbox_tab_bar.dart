import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/inbox/presentation/view/inbox_calls.dart';
import 'package:telead/features/inbox/presentation/view/inbox_chat.dart';

class InboxTabBarCard extends StatelessWidget {
  const InboxTabBarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child:ButtonsTabBar(
                    decoration: BoxDecoration(
                      color: AppColors.bgTab,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    unselectedDecoration: BoxDecoration(
                      color: AppColors.unselectBg,
                      borderRadius: BorderRadius.circular(60), 
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 27,
                      vertical: 0,
                    ),
                    buttonMargin: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 0,
                    ),
                    labelStyle: TextStyles.caption1.copyWith(
                      color: AppColors.backgroundcolor,
                    ),
                    unselectedLabelStyle: TextStyles.caption1.copyWith(
                      color: AppColors.blackColor,
                    ),
                    tabs: [
                       Tab(text: "Calls"),
                       Tab(text: "Chats",)
                    ],
              ),
              
            ),
            const Gap(20),
            const Expanded(
              child: TabBarView(
                children: [
                  InboxCalls(category: "Calls"),
                  InboxChats(category: "Chats"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}