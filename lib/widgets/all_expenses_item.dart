import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_itemheader.dart';
import 'package:responsive_dash_board/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allexpensesitemmodel,
    required this.isActive,
  });
  final AllExpensesItemModel allexpensesitemmodel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(allexpensesitemmodel: allexpensesitemmodel)
        : InActiveAllExpensesItem(allexpensesitemmodel: allexpensesitemmodel);
  }
}
