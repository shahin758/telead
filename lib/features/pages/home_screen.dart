import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';
import 'package:telead/core/widgets/custome_text_form_field.dart';
import 'package:telead/features/widgets/list_tile_home_screen.dart';
import 'package:telead/features/widgets/list_tile_popular_courses.dart';
import 'package:telead/features/widgets/popular_courses1.dart';
import 'package:telead/features/widgets/top_mentors_list.dart';

//import 'package:buttons_tabbar/buttons_tabbar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIndex = 1;
  final List<String> categories = [
    "3D Design",
    "Arts & Humanities",
    "Graphic Design",
    "Business",
    'SEO & Marketing',
    "Finance & Accounting",
    "HR Management",
  ];
  final List<String> mentors = ['Sonja', 'Jensen', 'Victoria', 'Castaldo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Ronald A. Martin',
                          style: TextStyles.title.copyWith(
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'What Would you like to learn Today?\n Search Below.',
                          style: TextStyles.caption2.copyWith(
                            color: AppColors.greycolor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    CircleAvatar(
                      radius: 33,
                      backgroundColor: AppColors.backgroundcolor,
                      child: SvgPicture.asset(AppImages.notificationsss),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: CustomeTextFormField(
                        hintText: "Search for..",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(9),
                          child: SvgPicture.asset(AppImages.filter),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 180,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.offer,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SvgPicture.asset(
                            AppImages.offer,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ListTileHomeScreen(),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) {
                      bool isSelected = selectedCategoryIndex == index;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategoryIndex = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 15,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.w500,
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 2),
                ListTilePopularCourses(text: 'Popular Courses'),
                PopularCourses1(),
                SizedBox(height: 25),
                ListTilePopularCourses(text: 'Top Mentors'),
                TopMentorsList(mentors: mentors),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
