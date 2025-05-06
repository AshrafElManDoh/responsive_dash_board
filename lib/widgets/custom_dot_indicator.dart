import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
        color: isActive ? ksecondaryColor : const Color(0xffE8E8E8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
