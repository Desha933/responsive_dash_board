import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyleFont.styleSemiBold16),
        subtitle: Text(subtitle, style: AppStyleFont.styleRegular12),
      ),
    );
  }
}
