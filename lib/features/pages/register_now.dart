import 'package:flutter/material.dart';
import '../../core/constants/app_images.dart';
import '../../core/functions/navigation.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/text_style.dart';
import '../../core/widgets/custome_text_form_field.dart';
import '../../core/widgets/main_button.dart';
import '../../core/widgets/password_text_form_field.dart';
import '../intro/lets_you_in_screen.dart';
import '../main/main_app_screen.dart';
import '../widgets/textspan.dart';

class RegisterNow extends StatelessWidget {
  const RegisterNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.logo22),
                        SizedBox(width: 12),
                        Image.asset(AppImages.text),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Text('Getting Started.!', style: TextStyles.title),
                  SizedBox(height: 10),
                  Text(
                    'Create an Account to Continue your allCourses',
                    style: TextStyles.caption2.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomeTextFormField(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                    hasShadow: false,
                  ),
                  const SizedBox(height: 20),
                  PasswordTextFormField(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_open_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(AppImages.right),
                      TextButton(
                        onPressed: () {
                          pushReplacement(context, LetsYouInScreen());
                        },
                        child: Text(
                          'Agree to Terms & Conditions',
                          style: TextStyles.caption2.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 39),
                  MainButton(
                    text: 'Sign Up',
                    onPressed: () {
                      pushTo(context, MainAppScreen());
                    },
                    spacing: 60.0,
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      'Or Continue With',
                      style: TextStyles.caption1.copyWith(
                        color: AppColors.greyColor,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          AppImages.google,
                          width: 40,
                          height: 40,
                        ),
                      ),

                      const SizedBox(width: 50),

                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          AppImages.apple,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20,),
                  Center(
                    child: Textspan(
                      text: 'SIGN IN',
                      text2: 'Already have an Account?',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
