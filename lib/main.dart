import 'package:flutter/material.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/theme.dart';
import 'constants.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: "Flutter demo",
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}



