import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/components/body.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Sign In", style: TextStyle(color: Color(0XFF888888), fontSize: 18), ),
      ),
      body: Body(),
    );
  }
}