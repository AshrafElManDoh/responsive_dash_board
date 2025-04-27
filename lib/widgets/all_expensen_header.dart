import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensenHeader extends StatelessWidget {
  const AllExpensenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(width: 1, color: Color(0xffF1F1F1)))),
          child: const Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16,
              ),
              SizedBox(
                width: 18,
              ),
              Icon(Icons.keyboard_arrow_down_outlined),
            ],
          ),
        )
      ],
    );
  }
}
