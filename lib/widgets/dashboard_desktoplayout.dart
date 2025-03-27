import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/drawer.dart';
import 'package:responsive_dash_board/widgets/quike_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(height: 20),
              AllExpenses(),
              SizedBox(height: 15),
              QuikeInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
