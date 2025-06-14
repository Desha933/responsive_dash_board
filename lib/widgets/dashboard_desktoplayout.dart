import 'package:flutter/material.dart';

import 'all_expensess_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 20),
              Expanded(
                flex: 2,
                child: MyCardsAndTransctionHistorySection(),
              ),
              SizedBox(height: 20),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
