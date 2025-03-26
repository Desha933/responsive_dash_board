import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_itemheader.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allexpensesitemmodel,
  });

  final AllExpensesItemModel allexpensesitemmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemheader(image: allexpensesitemmodel.image),
          SizedBox(height: 34),
          Text(allexpensesitemmodel.title, style: AppStyleFont.styleSemiBold16),
          SizedBox(height: 8),
          Text(allexpensesitemmodel.date, style: AppStyleFont.styleRegular14),
          SizedBox(height: 16),
          Text(allexpensesitemmodel.price, style: AppStyleFont.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allexpensesitemmodel,
    this.iconcolor = Colors.white,
  });

  final AllExpensesItemModel allexpensesitemmodel;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemheader(
            image: allexpensesitemmodel.image,
            iconcolor: iconcolor,
          ),
          SizedBox(height: 34),
          Text(
            allexpensesitemmodel.title,
            style: AppStyleFont.styleSemiBold16.copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            allexpensesitemmodel.date,
            style: AppStyleFont.styleRegular14.copyWith(color: Colors.white),
          ),
          SizedBox(height: 16),
          Text(
            allexpensesitemmodel.price,
            style: AppStyleFont.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
