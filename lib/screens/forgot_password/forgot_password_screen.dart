import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Forgot Password",style: TextStyle(color:kTextColor, fontSize: 18),),
      ),
      body: Body(),
    );
  }
} 