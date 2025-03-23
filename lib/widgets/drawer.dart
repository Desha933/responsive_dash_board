import 'package:flutter/material.dart';
import 'package:responsive_dash_board/gen/assets.gen.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_draweritem.dart';
import 'package:responsive_dash_board/widgets/draweritem_listview.dart';
import 'package:responsive_dash_board/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
              title: 'Mostafa',
              subtitle: 'mostafafarar@gmail.com',
              image: Assets.images.avatar1,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),

          DrawerItemListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting System',
                    image: Assets.images.settings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout Account',
                    image: Assets.images.logout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
