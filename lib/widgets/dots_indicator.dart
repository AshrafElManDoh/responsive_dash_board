import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentCardIndex});
  final int currentCardIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CustomDotIndicator(isActive: index == currentCardIndex),
        ),
      ),
    );
  }
}
