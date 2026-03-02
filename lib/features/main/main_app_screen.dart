import 'package:flutter/material.dart';
import '../../core/constants/app_images.dart';
import '../../core/theme/colors.dart';
import '../../core/widgets/custom_svg_picture.dart';
import '../pages/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});
  @override
  State<MainAppScreen> createState() => _MainAppScreen();
}

class _MainAppScreen extends State<MainAppScreen> {
  int currentindex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text('MyCourses')),
    Center(child: Text('INDOX')),
    Center(child: Text('Transactions')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: _navBar(),
    );
  }

  Padding _navBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.homesvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.homesvg,
                color: AppColors.selecteditem,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.mycoursessvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.mycoursessvg,
                color: AppColors.selecteditem,
              ),
              label: 'My Courses',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.indoxsvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.indoxsvg,
                color: AppColors.selecteditem,
              ),
              label: 'INDOX',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.transactionsvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.transactionsvg,
                color: AppColors.selecteditem,
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.profilesvg),
              activeIcon: CustomSvgPicture(
                path: AppImages.profilesvg,
                color: AppColors.selecteditem,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
