import 'package:flutter/material.dart';
import 'package:telead/features/intro/splash_screen.dart';
import 'package:telead/features/single_course_details/presentation/view/single_course_details.dart';
import 'core/theme/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lighttheme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          //  bottom: Platform.isAndroid,
          child: child ?? SizedBox(),
        );
      },
      home: SplashScreen(),
    );
  }
}
