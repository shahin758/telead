import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/create%20New%20password/page/createPassword_screen.dart';
import 'package:telead/features/verify/widgets/main_button.dart';
import 'package:telead/features/verify/widgets/otp_field.dart';
import 'package:telead/features/verify/widgets/verify_time.dart';

class VerifyForgotPasswordScreen extends StatefulWidget {
  const VerifyForgotPasswordScreen({super.key});

  @override
  State<VerifyForgotPasswordScreen> createState() =>
      _VerifyForgotPasswordScreenState();
}

class _VerifyForgotPasswordScreenState
    extends State<VerifyForgotPasswordScreen> {

  final TextEditingController _pinController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final VerifyTimerController _timerController = VerifyTimerController();

  @override
  void initState() {
    super.initState();
    _timerController.startTimer();
    _timerController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timerController.disposeTimer();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        titleSpacing: 0,
        elevation: 0,
        leading: const BackButton(color: AppColors.back),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Forgot Password",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 124),

              const Text(
                "Code has been sent to (+1) ***-***-529",
                style: TextStyle(
                  color: AppColors.greycolor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                  ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              OtpField(controller: _pinController),

              const SizedBox(height: 50),

              GestureDetector(
                onTap: _timerController.secondsRemaining == 0
                    ? _timerController.restartTimer
                    : null,
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        color: AppColors.greycolor, fontSize: 14),
                    children: [
                      const TextSpan(
                        text: "Resend Code in ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        )
                        ),
                      TextSpan(
                        text: "${_timerController.secondsRemaining}",
                        style: const TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),
                      ),
                      const TextSpan(text: "s",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      )
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              MainButton(
                text: "Verify",
                onPressed: () {
                  if (_pinController.text.length == 4) {
                    pushTo(context, const CreateNewPasswordScreen());
                  }
                },
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}