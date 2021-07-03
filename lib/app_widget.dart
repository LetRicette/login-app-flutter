import 'package:flutter/material.dart';
import 'package:login/modules/createAccount/create_account_page.dart';
import 'package:login/modules/home/home_page.dart';
import 'package:login/modules/login/login_page.dart';
import 'package:login/modules/recoveryPassword/recoveryPassword_page.dart';
import 'package:login/modules/splash/splash_pages.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => SplashPage(),
          "/login": (context) => LoginPage(),
          "/recoveryPassword": (context) => RecoveryPasswordPage(),
          "/createAccount": (context) => CreateAccountPage(),
          "/home": (context) => HomePage(),
        });
  }
}
