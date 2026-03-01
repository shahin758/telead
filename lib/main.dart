import 'package:flutter/material.dart';
import 'package:telead/core/theme/themes.dart';
import 'dart:io';
import 'package:telead/features/intro/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? SizedBox(),
        );
      },
      home: SplashScreen(),
    );
  }
}
