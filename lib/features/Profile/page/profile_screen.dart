import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/Profile/widgets/profile_item_list.dart';
import 'package:telead/features/Profile/widgets/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = ProfileModel(
      name: "James S. Hernandez",
      email: "hernandex.redial@gmail.ac.in",
      language: "English (US)",
    );

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0,
          leading: const BackButton(color: AppColors.back),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(
                    color: AppColors.back,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            ProfileItemList(profile: profile),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}