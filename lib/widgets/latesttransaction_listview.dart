import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_listtile.dart';

class LatestTransactionListview extends StatefulWidget {
  const LatestTransactionListview({super.key});

  @override
  State<LatestTransactionListview> createState() =>
      _LatestTransactionListviewState();
}

class _LatestTransactionListviewState extends State<LatestTransactionListview> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'Madrani Andi',
      image: Assets.assetsImagesAvatar1,
      subtitle: 'madraniandigmail.com',
    ),
    DrawerItemModel(
      title: 'Josua Nunito',
      image: Assets.assetsImagesAvatar1,
      subtitle: 'madraniandigmail.com',
    ),

    DrawerItemModel(
      title: 'Monnai trani',
      image: Assets.assetsImagesAvatar1,
      subtitle: 'madraniandigmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListtile(userinfomodel: e)),
                )
                .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,

    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListtile(userinfomodel: items[index]),
    //       );
    //     },
    //   ),
    // );
  }
}
