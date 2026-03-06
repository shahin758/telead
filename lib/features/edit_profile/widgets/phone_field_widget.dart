import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class PhoneFieldWidget extends StatelessWidget {
  final TextEditingController phoneController;
  final String selectedCountryCode;
  final String selectedCountryFlag;
  final List<Map<String, String>> countries;
  final Function(String, String) onCountrySelected;

  const PhoneFieldWidget({
    super.key,
    required this.phoneController,
    required this.selectedCountryCode,
    required this.selectedCountryFlag,
    required this.countries,
    required this.onCountrySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: countries.map((country) {
                        return ListTile(
                          title: Text(
                              "${country["flag"]} ${country["code"]}"),
                          onTap: () {
                            onCountrySelected(
                                country["code"]!,
                                country["flag"]!);
                            Navigator.pop(context);
                          },
                        );
                      }).toList(),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text(selectedCountryFlag),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}