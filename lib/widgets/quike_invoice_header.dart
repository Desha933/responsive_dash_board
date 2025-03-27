import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QuikeInvoiceHeader extends StatelessWidget {
  const QuikeInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quike Invoice', style: AppStyleFont.styleSemiBold20),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
