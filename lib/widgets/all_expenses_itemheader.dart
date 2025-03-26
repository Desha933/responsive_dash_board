import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemheader extends StatelessWidget {
  const AllExpensesItemheader({super.key, required this.image, this.iconcolor});
  final String image;
  final Color? iconcolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 180 * 3.14 / 180,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconcolor ?? Color(0XFF064061),
          ),
        ),
      ],
    );
  }
}
