import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_dash_board/gen/assets.gen.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  int isslected = 0;
  final List<AllExpensesItemModel> allexpensesitemmodellist = [
    AllExpensesItemModel(
      image: Assets.images.balance,
      title: 'Balance',
      date: '12 Aprile',
      price: r'$ 50',
    ),
    AllExpensesItemModel(
      image: Assets.images.income,
      title: 'Income',
      date: '12 Aprile',
      price: r'$ 50',
    ),
    AllExpensesItemModel(
      image: Assets.images.expenses,
      title: 'Expenses',
      date: '12 Aprile',
      price: r'$ 50',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          allexpensesitemmodellist.asMap().entries.map((e) {
            int index = e.key;
            bool haspadding = false;
            if (index == 0 || index == 1) {
              haspadding = true;
            }
            ;
            var item = e.value;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  if (isslected != index) {
                    setState(() {
                      isslected = index;
                    });
                  }
                },
                child: Padding(
                  padding:
                      haspadding
                          ? EdgeInsets.only(right: 12)
                          : EdgeInsets.all(0),
                  child: AllExpensesItem(
                    allexpensesitemmodel: item,
                    isActive: isslected == index,
                  ),
                ),
              ),
            );
          }).toList(),
      // allexpensesitemmodellist
      //     .map(
      //       (item) => Expanded(
      //         child: AllExpensesItem(allexpensesitemmodel: item),
      //       ),
      //     )
      //     .toList(),
    );
  }
}
