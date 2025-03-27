import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key, required this.userinfomodel});

  final DrawerItemModel userinfomodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userinfomodel.image),
          title: Text(userinfomodel.title, style: AppStyleFont.styleSemiBold16),
          subtitle: Text(
            userinfomodel.subtitle ?? '',
            style: AppStyleFont.styleRegular12,
          ),
        ),
      ),
    );
  }
}
