import 'package:flutter/material.dart';
import 'package:telead/core/theme/colors.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/transaction/data/model/transaction_model.dart';

class TransactionCardList extends StatelessWidget {
  const TransactionCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: transaction.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 10),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    transaction[index].img,
                    fit: BoxFit.cover,
                    height: 70,
                    width: 100,
                    errorBuilder: (context, error, stackTrace) {
                      return SizedBox(
                        width: 150,
                        height: 100,
                        child: Icon(Icons.error, color: AppColors.unselectBg),
                      );
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          transaction[index].transactionName,
                          style: TextStyles.body.copyWith(
                            fontSize: 14,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        transaction[index].title,
                        style: TextStyles.caption2.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 10,
                        ),
                        width: 50,
                        decoration: BoxDecoration(color: AppColors.bgTab),
                        child: Text(
                          textAlign: TextAlign.center,
                          transaction[index].paid,
                          style: TextStyles.subtitle.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
