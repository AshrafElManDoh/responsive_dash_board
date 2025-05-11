import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensen_header.dart';
import 'package:responsive_dash_board/widgets/chart_section.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          AllExpensenHeader(
            sectionName: "Income",
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: ChartSection(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
