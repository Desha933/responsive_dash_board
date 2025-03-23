import 'package:flutter/material.dart';
import 'package:responsive_dash_board/gen/assets.gen.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeindex = 0;
  final List<DrawerItemModel> draweritemmodellist = [
    DrawerItemModel(title: 'Dashboard', image: Assets.images.dashboard),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.images.myTransctions,
    ),
    DrawerItemModel(title: 'Statistics', image: Assets.images.statistics),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.images.walletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.images.myInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: draweritemmodellist.length,

      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeindex != index) {
              setState(() {
                activeindex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItemModel: draweritemmodellist[index],
              isActive: activeindex == index,
            ),
          ),
        );
      },
    );
  }
}
