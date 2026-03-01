import 'package:flutter/material.dart';

import '../constants/app_fonts.dart';
import 'colors.dart';
import 'text_styles.dart';

abstract class AppThemes {
  static ThemeData get lighttheme => ThemeData(
    fontFamily: AppFonts.jost,
    scaffoldBackgroundColor: AppColors.backgroundcolor,
    buttonTheme: ButtonThemeData(buttonColor: AppColors.primaryColor),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundcolor,
      elevation: 0,
      centerTitle: true,
    ),
    dividerColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(6),
        backgroundColor: AppColors.primaryColor,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        foregroundColor: AppColors.backgroundcolor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedLabelStyle: TextStyles.caption2.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
      unselectedLabelStyle: TextStyles.caption2.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      
      hintStyle: TextStyles.caption1,
      fillColor: AppColors.whiteColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      // text color
      onSurface: AppColors.blackColor,
    ),
  );
}
