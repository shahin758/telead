import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/Profile/page/profile_screen.dart';
import 'package:telead/features/create%20New%20password/widgets/password_fields.dart';
import 'package:telead/features/verify/widgets/main_button.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState
    extends State<CreateNewPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.backgroundcolor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0,
          leading: const BackButton(color: AppColors.back),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Create New Password",
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    kToolbarHeight -
                    MediaQuery.of(context).padding.top,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      "Create Your New Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    PasswordFields(
                      formKey: _formKey, 
                      passwordController: _passwordController,
                      confirmController: _confirmController,
                      obscurePassword: _obscurePassword,
                      obscureConfirm: _obscureConfirm,
                      onPasswordToggle: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      onConfirmToggle: () {
                        setState(() {
                          _obscureConfirm = !_obscureConfirm;
                        });
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 32 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: MainButton(
            text: "Continue",
            onPressed: () {
              _formKey.currentState!.validate();
              if (_formKey.currentState!.validate()) {
                pushTo(context, ProfileScreen());
              }
            },
          ),
        ),
      ),
    );
  }
}