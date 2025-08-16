import 'package:abanoub_assiment/screens/login.dart';
import 'package:flutter/material.dart';

import 'screens/forgot_password_screen.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Login.routeName: (context) => Login(),
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        ForgotPasswordPage.routeName: (context) => ForgotPasswordPage(),
      },
      initialRoute: Login.routeName,
    );
  }
}
