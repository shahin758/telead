// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import '../../core/constants/app_images.dart';
import '../../core/functions/navigation.dart';
import '../../core/theme/colors.dart';
import '../auth/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      pushReplacement(context, LoginScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.primaryColor,
            child: Center(
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  Container(
                    width: 260,
                    height: 260,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.backgroundcolor,
                        width: 2,
                      ),
                    ),
                  ),
                  Image.asset(AppImages.shape),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(AppImages.logo, width: 120),
                      const SizedBox(height: 16),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
