import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';

class CustomBackgroundWidget extends StatelessWidget {
  const CustomBackgroundWidget({super.key, required this.child});
final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
