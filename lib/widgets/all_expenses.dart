import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensen_header.dart';
import 'package:responsive_dash_board/widgets/all_expensen_items_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        child: Column(
      children: [
        AllExpensenHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensenItemsListView(),
      ],
    ));
  }
}
