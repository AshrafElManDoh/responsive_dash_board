import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryItemsListView extends StatelessWidget {
  const TransactionHistoryItemsListView({super.key});

  static const List<TransactionHistoryItemModel> items=[
    TransactionHistoryItemModel(
      isWithdraw: true,
              transactionName: "Cash Withdrawal",
              date: "13 Apr, 2022 ",
              amount: r"$20,129",
              
            ),TransactionHistoryItemModel(
              isWithdraw: false,
              transactionName: "Landing Page project",
              date: "13 Apr, 2022 at 3:30 PM",
              amount: r"$2000",
            ),TransactionHistoryItemModel(
              isWithdraw: false,
              transactionName: "Juni Mobile App project",
              date: "13 Apr, 2022 at 3:30 PM",
              amount: r"$23,500",
            ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionHistoryItem(
            item: items[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 6,
            ),
        itemCount: items.length);
  }
}
