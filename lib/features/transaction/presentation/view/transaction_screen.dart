import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/transaction/presentation/widgets/transaction_card.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading:  IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: false,
         title: Text("Transaction", style: TextStyles.body.copyWith(
           color: AppColors.blackColor,
           fontWeight: FontWeight.w800,
         ),
        ),
        actions: [
            IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.search),
        ), 
        ],
       ),
       body: Column(
         children: [
           TransactionCardList()
         ],
       ),
    );
  }
}