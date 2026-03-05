import 'package:flutter/material.dart';
import 'package:telead/core/constants/app_images.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/features/mentor%20list/widgets/mentors_data.dart';
import 'package:telead/features/mentor%20list/widgets/mentors_result.dart';
import '../widgets/mentor_item.dart';
import '../widgets/mentors_tabs.dart';

class MentorsScreen extends StatelessWidget {
  const MentorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Mentors",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              Container(
                height: 55,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffE0E6F2),
                      blurRadius: 15,
                      offset: Offset(0, 6),
                    )
                  ],
                ),
                child: Row(
                  children: [ 
                    IconButton(
                      onPressed: () {
                      
                      },
                      icon: Image.asset(AppImages.searche),
                    ),
                    
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "3D Design",
                        style: TextStyle(
                          color: Color(0xffA0A4AB),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xff246BFD),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const MentorsTabs(),

              const SizedBox(height: 20),

              const MentorsResultRow(),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: mentors.length,
                  itemBuilder: (context, index) {
                    return MentorItem(
                      name: mentors[index].name,
                      image: mentors[index].image,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}