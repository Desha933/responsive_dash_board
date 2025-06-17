import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'transction_history_list_view.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TansctionHistoryHeader(),
        const FittedBox(
          child: Text(
            '13 April 2022',
            style: TextStyle(
              color: Color(0xFFAAAAAA),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: const TransctionHistoryListView(),
        ),
      ],
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
