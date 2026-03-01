import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_style.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundcolor,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.textcolor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(350, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        foregroundColor: AppColors.whitecolor,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.caption2.copyWith(color: AppColors.greycolor),
      fillColor: AppColors.whitecolor,
      filled: true,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundcolor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.selecteditem,
      unselectedItemColor: AppColors.greycolor,
      selectedLabelStyle: TextStyles.caption3.copyWith(
        fontWeight: FontWeight.w800,
        height: 2
      ),
      unselectedLabelStyle: TextStyles.caption3.copyWith(
        fontWeight: FontWeight.w800,
         height: 2
      ),
      elevation: 0,
    ),
  );
}
