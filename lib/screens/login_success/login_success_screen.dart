import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/login_success/components/body.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});
  static String routeName = "login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        leading: IconButton(
          icon: Icon(Icons.exit_to_app_rounded),
          onPressed: () {
          },
          
        ),
        title: Text("Login Success",style: TextStyle(color:kTextColor, fontSize: 18),),
      ),
      body: Body(),
    );
  }
}