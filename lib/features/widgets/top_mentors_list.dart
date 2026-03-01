import 'package:flutter/material.dart';

class TopMentorsList extends StatelessWidget {
  const TopMentorsList({super.key, required this.mentors});

  final List<String> mentors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...mentors.map((name) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                const SizedBox(height: 10),

                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFF202244),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
