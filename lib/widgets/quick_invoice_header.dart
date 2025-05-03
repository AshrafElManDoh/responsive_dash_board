import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffF1F1F1),
          ),
          child: const Icon(
            Icons.add,
            color: ksecondaryColor,
          ),
        )
      ],
    );
  }
}
