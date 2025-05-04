import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/constants.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.icon, this.color});
  final String icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: color == null
                ? const Color(0xffF1F1F1)
                : kwhite.withOpacity(.1),
          ),
          child: SvgPicture.asset(
            icon,
            colorFilter: color == null
                ? null
                : const ColorFilter.mode(kwhite, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(Icons.keyboard_arrow_right_outlined,
            color: color == null ? null : kwhite),
      ],
    );
  }
}
