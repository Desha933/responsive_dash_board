import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyleFont.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
        fillColor: Color(0xfffafafa),
        filled: true,
        enabledBorder: BuildBorder(),
        border: BuildBorder(),
        focusedBorder: BuildBorder(),
      ),
    );
  }

  OutlineInputBorder BuildBorder() => OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xfffafafa)),
    borderRadius: BorderRadius.circular(12),
  );
}
