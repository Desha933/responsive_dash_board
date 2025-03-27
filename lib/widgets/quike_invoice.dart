import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quike_invoice_header.dart';

class QuikeInvoice extends StatelessWidget {
  const QuikeInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [QuikeInvoiceHeader(), LatestTransaction()],
      ),
    );
  }
}
