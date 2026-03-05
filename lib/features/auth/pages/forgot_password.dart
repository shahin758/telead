import 'package:flutter/material.dart';
import 'package:telead/core/functions/navigation.dart';
import 'package:telead/features/search/search_screen.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/widgets/main_button.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  SelectionScreenState createState() => SelectionScreenState();
}

class SelectionScreenState extends State<SelectionScreen> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyles.title.copyWith(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        leadingWidth: 30,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Select which contact details should we use to reset your password",
              textAlign: TextAlign.center,
              style: TextStyles.caption1.copyWith(color: Colors.grey[700]),
            ),
            SizedBox(height: 30),

            // Card for Email
            selectioncard(
              index: 0,
              icon: Icons.email,
              title: "via Email:",
              value: "ex***le@gmail.com",
            ),

            SizedBox(height: 20),

            // Card for SMS
            selectioncard(
              index: 1,
              icon: Icons.message,
              title: "via SMS:",
              value: "+1 234 **** 567",
            ),
            SizedBox(height: 40),
            MainButton(
              text: "Continue",
              onPressed: () {
                pushTo(context, SearchScreen());
              },
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget selectioncard({
    required int index,
    required IconData icon,
    required String title,
    required String value,
  }) {
    bool isSelected = selectedOption == index;

    return GestureDetector(
      onTap: () => setState(() => selectedOption = index),
      child: Container(
        height: 80,
        width: 350,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.blueAccent : Colors.grey[300]!,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: (0.05)),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent.withValues(alpha: (0.1)),
              child: Icon(icon, color: Colors.blueAccent, size: 30),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
                Text(
                  value,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
