import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaulButton extends StatelessWidget {
  const DefaulButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          backgroundColor: kPrimaryColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily:" Muli",
            fontSize: getProportionateScreenHeight(18)
          ),     
        ),
      ),
    );
  }
}