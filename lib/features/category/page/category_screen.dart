import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/features/courses/pages/courses_list.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/theme/text_style.dart';
import '../../../core/widgets/custome_text_form_field.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Category',
          style: TextStyles.title.copyWith(fontFamily: 'jost'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  Expanded(
                    child: CustomeTextFormField(
                      hintText: 'Search for.',
                      hasShadow: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(9),
                        child: SvgPicture.asset(AppImages.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      pushTo(context, CoursesList());
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: SvgPicture.asset(AppImages.designs, height: 80),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SvgPicture.asset(AppImages.graphics, height: 80),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: SvgPicture.asset(AppImages.web, height: 80),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SvgPicture.asset(AppImages.seo, height: 80),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: SvgPicture.asset(AppImages.finance, height: 80),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SvgPicture.asset(AppImages.personal, height: 80),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: SvgPicture.asset(AppImages.office, height: 80),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SvgPicture.asset(AppImages.hr, height: 80),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
