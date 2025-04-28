import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensen_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isActive});
  final AllExpensenItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(itemModel: itemModel,)
        : InActiveExpensesItem(itemModel: itemModel);
  }
}
