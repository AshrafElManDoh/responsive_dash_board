import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            hintText: hint,
            hintStyle: AppStyles.styleRegular16(context).copyWith(
              color: const Color(0xffAAAAAA),
            ),
            border: borderDecoration(),
            enabledBorder: borderDecoration(),
            focusedBorder: borderDecoration(),
          ),
        )
      ],
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
