import 'package:flutter/material.dart';
import 'package:telead/features/widgets/main_buttonn.dart';
import '../../core/constants/app_images.dart';
import '../../core/functions/navigation.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/text_style.dart';
import '../../core/widgets/main_button.dart';
import '../auth/pages/register_now.dart';
import '../auth/widgets/textspan.dart';

class LetsYouInScreen extends StatelessWidget {
  const LetsYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logo22),
                    SizedBox(width: 12),
                    Image.asset(AppImages.text),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Let’s you in',
                style: TextStyles.title.copyWith(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundcolor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor,
                        blurRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.backgroundcolor,
                        child: Image.asset(AppImages.google, height: 70),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Continue with Google',
                        style: TextStyles.caption2.copyWith(
                          fontWeight: FontWeight.w800,
                          color: AppColors.greyColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundcolor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor,
                        blurRadius: 0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.backgroundcolor,
                        child: Image.asset(AppImages.circle, height: 70),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Continue with Apple',
                        style: TextStyles.caption2.copyWith(
                          fontWeight: FontWeight.w800,
                          color: AppColors.greyColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 59),
              Text(
                '( Or )',
                style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Row(
                    children: [
                      MainButton(
                        text: 'Sign In with Your Account',
                        onPressed: () {
                          pushReplacement(context, RegisterNow());
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Textspan(text: 'SIGN UP', text2: 'Don’t have an Account?'),
            ],
          ),
        ),
      ),
    );
  }
}
