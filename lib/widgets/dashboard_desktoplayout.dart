import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/allexpensesandquickeinvoice_section.dart';
import 'package:responsive_dash_board/widgets/drawer.dart';

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
          child: SingleChildScrollView(
            child: AllExpensesAndQuickeinvoiceSection(),
          ),
        ),
      ],
    );
  }
}
