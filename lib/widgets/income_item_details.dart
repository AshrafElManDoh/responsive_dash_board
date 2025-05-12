import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.item});
  final IncomeItemDetailsModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: item.color,
        radius: 6,
      ),
      title: Text(
        item.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        "${item.value}%",
        style: AppStyles.styleMedium16(context).copyWith(
          color: ksecondaryColor,
        ),
      ),
    );
  }
}
