import 'package:flutter/material.dart';
import 'package:telead/core/theme/text_styles.dart';
import '../../core/functions/navigation.dart';
import '../../core/theme/colors.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../courses/pages/popular_courses.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchkey = "";
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyles.title.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        leadingWidth: 30,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            spacing: 15,
            children: [
              CustomTextFormField(
                focusNode: focusNode,
                onChanged: (value) {
                  setState(() {
                    searchkey = value;
                  });
                },
                hintText: "search for",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Container(
                  height: 30,
                  width: 30,

                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                    pushTo(context, PopularCourses());
                    },
                    icon: Icon(Icons.search),
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Recents Search",
                    style: TextStyles.body.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyles.caption1.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "3D Design",
                    style: TextStyles.body.copyWith(
                      color: AppColors.hintTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: AppColors.blackColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Graphic Design",
                    style: TextStyles.body.copyWith(
                      color: AppColors.hintTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: AppColors.blackColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Programming",
                    style: TextStyles.body.copyWith(
                      color: AppColors.hintTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: AppColors.blackColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "SEO & Marketing",
                    style: TextStyles.body.copyWith(
                      color: AppColors.hintTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: AppColors.blackColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Web Development",
                    style: TextStyles.body.copyWith(
                      color: AppColors.hintTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: AppColors.blackColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
