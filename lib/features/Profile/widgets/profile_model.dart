import 'package:flutter/material.dart';
import 'package:telead/core/constants/app_images.dart';

import 'package:telead/features/auth/pages/createPassword_screen.dart';
import 'package:telead/features/edit_profile/page/edit_profile_screen.dart';

class ProfileModel {
  final String name;
  final String email;
  final String language;

  ProfileModel({
    required this.name,
    required this.email,
    required this.language,
  });
}


class ProfileItem {
  final String title;
  final IconData? icon;   
  final String? image;
  final Widget page; 

  ProfileItem({
    required this.title,
    this.icon,
    this.image,
    required this.page
  });
}


final List<ProfileItem> profileItems = [

  ProfileItem(
    title: 'Edit Profile',
    image: AppImages.EditProfile,
    page: EditProfileScreen()
  ),

  ProfileItem(
    title: 'Payment Option',
    image: AppImages.Payment,
    page:CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Notifications',
    image: AppImages.Notifications,
    page:CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Security',
    image: AppImages.Security,
    page:CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Language',
    image: AppImages.Language,
    page:CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Dark Mode',
    image: AppImages.DarkMode,
    page:CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Terms & Conditions',
    image: AppImages.TermsConditions,
    page: CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Help Center',
    image: AppImages.HelpCenter,
    page: CreateNewPasswordScreen()
  ),

  ProfileItem(
    title: 'Invite Friends',
    image: AppImages.IntiveFriends,
    page: CreateNewPasswordScreen()
  ),
];


  