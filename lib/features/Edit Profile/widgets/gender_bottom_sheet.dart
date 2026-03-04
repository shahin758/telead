import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';

class GenderBottomSheet extends StatelessWidget {
  final String selectedGender;
  final List<String> genders;
  final Function(String) onGenderSelected;

  const GenderBottomSheet({
    super.key,
    required this.selectedGender,
    required this.genders,
    required this.onGenderSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: genders.map((gender) {
                  return ListTile(
                    title: Text(gender),
                    onTap: () {
                      onGenderSelected(gender);
                      Navigator.pop(context);
                    },
                  );
                }).toList(),
              );
            },
          );
        },
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: AppColors.whitecolor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(selectedGender),
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }
}