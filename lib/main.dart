import 'dart:io';

import 'package:flutter/material.dart';

import 'core/theme/themes.dart';
import 'features/intro/splash_screen.dart';

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
          bottom: Platform.isAndroid,
          child: child ?? SizedBox(),
        );
      },

      home: SplashScreen(),
    );
  }
}
