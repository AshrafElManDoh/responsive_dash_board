import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(
              right: 32,
              left: 32,
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
                  SizedBox(height: 40,)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
