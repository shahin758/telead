import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:telead/core/theme/colors.dart';

class OtpField extends StatefulWidget {
  final TextEditingController controller;

  const OtpField({super.key, required this.controller});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {

  bool _obscure = false;

  void _onPinChanged(String value) {
    if (value.isNotEmpty) {
      setState(() => _obscure = false);

      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          setState(() => _obscure = true);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    final pinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 18,
        color: Color(0xff1E3C57),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundcolor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 2),
            blurRadius: 10,
          ),
        ],
      ),
    );

    return Pinput(
      controller: widget.controller,
      length: 4,
      keyboardType: TextInputType.number,
      obscureText: _obscure,
      obscuringCharacter: "*",
      onChanged: _onPinChanged,
      defaultPinTheme: pinTheme,
      focusedPinTheme: pinTheme.copyWith(
        decoration: pinTheme.decoration!.copyWith(
          border: Border.all(color: AppColors.primaryColor),
        ),
      ),
      errorPinTheme: pinTheme.copyWith(
        decoration: pinTheme.decoration!.copyWith(
          border: Border.all(color: Colors.red),
        ),
      ),
      separatorBuilder: (index) => const SizedBox(width: 12),
      validator: (value) {
        if (value == null || value.length < 4) {
          return "Enter 4 digit code";
        }
        return null;
      },
    );
  }
}