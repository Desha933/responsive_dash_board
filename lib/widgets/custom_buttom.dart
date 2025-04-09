import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.backgroundcolor, this.textcolor});
  final Color? backgroundcolor;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundcolor ?? Colors.blue,

          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),

        onPressed: () {},
        child: FittedBox(
          child: Text(
            'Send Massage',
            style: AppStyleFont.styleSemiBold18.copyWith(color: textcolor),
          ),
        ),
      ),
    );
  }
}
