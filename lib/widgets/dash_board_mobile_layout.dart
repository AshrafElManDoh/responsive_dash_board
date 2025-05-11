import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right:16,
        left: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
            SizedBox(
              height: 24,
            ),
            MyCardAndTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
