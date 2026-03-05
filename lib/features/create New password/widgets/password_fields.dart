import 'package:flutter/material.dart';
import 'package:telead/features/create%20New%20password/widgets/password_from.dart';

const String kPasswordLabel = "Password";
const String kConfirmPasswordLabel = "Confirm Password";

class PasswordFields extends StatelessWidget {
  final GlobalKey<FormState> formKey; 
  final TextEditingController passwordController;
  final TextEditingController confirmController;
  final bool obscurePassword;
  final bool obscureConfirm;
  final VoidCallback onPasswordToggle;
  final VoidCallback onConfirmToggle;

  const PasswordFields({
    super.key,
    required this.formKey,
    required this.passwordController,
    required this.confirmController,
    required this.obscurePassword,
    required this.obscureConfirm,
    required this.onPasswordToggle,
    required this.onConfirmToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            controller: passwordController,
            obscureText: obscurePassword,
            decoration: buildPasswordFormDecoration(
              hint: kPasswordLabel,
              obscure: obscurePassword,
              onTap: onPasswordToggle,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) return "Enter your password";
              if (value.length < 8) return "Minimum 8 characters";

              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: confirmController,
            obscureText: obscureConfirm,
            decoration: buildPasswordFormDecoration(
              hint: kConfirmPasswordLabel,
              obscure: obscureConfirm,
              onTap: onConfirmToggle,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Confirm your password";
              }
              if (value != passwordController.text) {
                return "Passwords do not match";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}