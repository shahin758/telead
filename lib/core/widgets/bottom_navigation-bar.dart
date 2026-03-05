// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/courses_complete/presentation/view/courses_view.dart';
import 'package:telead/features/inbox/presentation/view/inbox_screen.dart';
import 'package:telead/features/transaction/presentation/view/transaction_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    
    MyCourses(),
    InboxScreen(),
    TransactionScreen(),
    Center(child: Text('profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _navBar(),
    );
  }

  Container _navBar() {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff555E58).withValues(alpha: .1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        selectedItemColor: AppColors.bgTab,
        selectedLabelStyle: TextStyles.caption2.copyWith(
          color: AppColors.bgTab,
          fontWeight: FontWeight.w700,
        ),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.home),
            activeIcon: SvgPicture.asset(
              AppImages.home,
              color: AppColors.bgTab,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.courses),
            activeIcon: SvgPicture.asset(
              AppImages.courses,
              color: AppColors.bgTab,
            ),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.inbox),
            activeIcon: SvgPicture.asset(
              AppImages.inbox,
              color: AppColors.bgTab,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.transaction),
            activeIcon: SvgPicture.asset(
              AppImages.transaction,
              color: AppColors.bgTab,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.account),
            activeIcon: SvgPicture.asset(
              AppImages.account,
              color: AppColors.bgTab,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
