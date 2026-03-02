import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telead/core/theme/text_style.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/functions/navigation.dart';
import '../../../core/functions/validation.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/main_button.dart';
import '../../../core/widgets/password_text_form_field.dart';
import '../widgets/custom_login_icon.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUnfocus,

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: SvgPicture.asset(
                      'assets/icons/LOGO.svg',
                      width: 185,
                      height: 70,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text("Let’s Sign In.! ", style: TextStyles.headline),
                  SizedBox(height: 16),
                  Text(
                    "Login to Your Account to Continue your Courses",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greycolor,
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextFormField(
                    validator: (value) {
                      if (isEmailValid(value!)) {
                        return "Please enter your email";
                      } else if (!value.contains("@")) {
                        return "Please enter a valid email";
                      }
                      return null;
                    },
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColors.greycolor,
                    ),
                  ),
                  SizedBox(height: 20),
                  PasswordTextFormField(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.greycolor,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greycolor,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: AlignmentGeometry.centerLeft,
                            child: Checkbox(
                              value: false,
                              onChanged: (value) {},
                              activeColor: AppColors.primaryColor,
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyles.caption2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: AppColors.blackcolor,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: TextButton(
                          onPressed: () {
                            pushTo(context, SelectionScreen());
                          },
                          child: Text(
                            "Forgot Password",
                            style: TextStyles.caption1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  MainButton(
                    text: "Sign In",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  SizedBox(height: 25),

                  Center(
                    child: Text(
                      "or continue with",
                      style: TextStyles.caption1.copyWith(
                        fontWeight: FontWeight.w800,
                        color: AppColors.greycolor,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLoginIcon(imagePath: AppImages.google),
                      SizedBox(width: 50),
                      CustomLoginIcon(imagePath: AppImages.apple),
                    ],
                  ),

                  SizedBox(height: 16),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an Account? ",
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.greycolor,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "SIGN UP",
                                style: TextStyles.caption1.copyWith(
                                  color: AppColors.primaryColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.primaryColor,
                                  decorationThickness: 3,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
