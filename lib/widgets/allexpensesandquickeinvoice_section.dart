import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quike_invoice.dart';

class AllExpensesAndQuickeinvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickeinvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        AllExpenses(),
        SizedBox(height: 15),
        QuikeInvoice(),
      ],
    );
  }
}
