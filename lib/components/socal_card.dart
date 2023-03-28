
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String icon;
  final Function() ?press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press!,
      child: Container(
          // margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(1)),
          // margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(getProportionateScreenWidth(5)),
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(40),
          decoration:  const BoxDecoration(
            color: Color(0xFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon),     
      ),
    );
  }
}