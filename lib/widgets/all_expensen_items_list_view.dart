import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensen_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensenItemsListView extends StatefulWidget {
  const AllExpensenItemsListView({super.key});

  @override
  State<AllExpensenItemsListView> createState() =>
      _AllExpensenItemsListViewState();
}

class _AllExpensenItemsListViewState extends State<AllExpensenItemsListView> {
  List<AllExpensenItemModel> list = const [
    AllExpensenItemModel(
        icon: Assets.imagesBalance,
        date: "April 2025",
        amount: "20,129",
        name: "Balance"),
    AllExpensenItemModel(
        icon: Assets.imagesIncome,
        date: "April 2025",
        amount: "20,129",
        name: "Income"),
    AllExpensenItemModel(
        icon: Assets.imagesExpenses,
        date: "April 2025",
        amount: "20,129",
        name: "Expenses")
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child:
                AllExpensesItem(itemModel: list[0], isActive: activeIndex == 0),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child:
                AllExpensesItem(itemModel: list[0], isActive: activeIndex == 1),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child:
                AllExpensesItem(itemModel: list[0], isActive: activeIndex == 2),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    if (activeIndex != index) {
      setState(() {
        activeIndex = index;
      });
    }
  }
}
