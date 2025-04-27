import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/widgets/all_expensen_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensenHeader(),
          
        ],
      ),
    );
  }
}
