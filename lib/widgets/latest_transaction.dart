import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/latesttransaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyleFont.styleMedium16),
        SizedBox(height: 10),
        LatestTransactionListview(),
      ],
    );
  }
}
