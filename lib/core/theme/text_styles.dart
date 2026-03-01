import 'package:flutter/material.dart';

import 'colors.dart';

abstract class TextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: AppColors.backgroundcolor,
  );
  static const TextStyle caption1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle caption2 = TextStyle(
    fontSize: 12,
    color: AppColors.greyColor,
  );
}
