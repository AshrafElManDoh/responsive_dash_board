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
      children: list.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                    onTap: () {
                      if (activeIndex != index) {
                        setState(() {
                          activeIndex = index;
                        });
                      }
                    },
                    child: AllExpensesItem(
                      itemModel: item,
                      isActive: activeIndex == index,
                    )),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                  onTap: () {
                    if (activeIndex != index) {
                      setState(() {
                        activeIndex = index;
                      });
                    }
                  },
                  child: AllExpensesItem(
                    itemModel: item,
                    isActive: activeIndex == index,
                  )),
            );
          }
        },
      ).toList(),
    );
  }
}
