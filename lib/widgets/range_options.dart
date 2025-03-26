import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyleFont.styleMedium16),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -90 * 3.14 / 180,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0XFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
