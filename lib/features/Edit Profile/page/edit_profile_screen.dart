import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/Edit%20Profile/widgets/custom_text_field.dart';
import 'package:telead/features/Edit%20Profile/widgets/gender_bottom_sheet.dart';
import 'package:telead/features/Edit%20Profile/widgets/phone_field_widget.dart';
import 'package:telead/features/Edit%20Profile/widgets/product_edit_profile.dart';
import 'package:telead/features/Edit%20Profile/widgets/profile_image_widget.dart';
import 'package:telead/features/mentor%20list/page/mentor_list_screen.dart';
import 'package:telead/features/verify/widgets/main_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController nickNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String selectedCountryCode = EditProfileData.defaultCountryCode;
  String selectedCountryFlag = EditProfileData.defaultCountryFlag;
  String selectedGender = EditProfileData.defaultGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.backgroundcolor,
      appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0,
          titleSpacing: 0,
          leading: const BackButton(color: AppColors.back),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Edit Profile",
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),

                const ProfileImageWidget(),

                const SizedBox(height: 30),

                CustomTextField(
                  hint: "Full Name" ,
                  controller: fullNameController,
                ),

                CustomTextField(
                  hint: "Nick Name",
                  controller: nickNameController,
                ),

                GestureDetector(
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2000),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );

                    if (picked != null) {
                      dobController.text =
                          "${picked.day}/${picked.month}/${picked.year}";
                    }
                  },
                  child: AbsorbPointer(
                    child: CustomTextField(
                      hint: "Date of Birth",
                      controller: dobController,
                      icon: Icons.calendar_today,
                    ),
                  ),
                ),

                CustomTextField(
                  hint: "Email",
                  controller: emailController,
                  icon: Icons.email_outlined,
                ),

                PhoneFieldWidget(
                  phoneController: phoneController,
                  selectedCountryCode: selectedCountryCode,
                  selectedCountryFlag: selectedCountryFlag,
                  countries: EditProfileData.countries,
                  onCountrySelected: (code, flag) {
                    setState(() {
                      selectedCountryCode = code;
                      selectedCountryFlag = flag;
                    });
                  },
                ),

                GenderBottomSheet(
                  selectedGender: selectedGender,
                  genders: EditProfileData.genders,
                  onGenderSelected: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),

                CustomTextField(
                  hint: "Student",
                ),

                SizedBox(height: 20,),
                MainButton(
                  text: "Update",
                  onPressed: () {
                  pushTo(context, MentorsScreen());
          
  },
),

                const SizedBox(height: 30),
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}