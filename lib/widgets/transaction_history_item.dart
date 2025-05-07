import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.item});

  final TransactionHistoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          item.transactionName,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          item.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(
              0xffAAAAAA,
            ),
          ),
        ),
        trailing: Text(
          item.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: item.isWithdraw
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
