import 'package:abanoub_assiment/screens/forgot_password_screen.dart';
import 'package:abanoub_assiment/screens/register_screen.dart';
import 'package:flutter/material.dart';
import '../custom widgets/custom_Input_field.dart';
import '../custom widgets/custom_text_button.dart';

import 'home_screen.dart';

class Login extends StatelessWidget {
  static const String routeName = "Login Screen";
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 4),
              Icon(Icons.facebook_outlined, size: 100, color: Colors.white),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomInputField(hint: "Email or phone"),
              ),

              CustomInputField(hint: "Password"),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    backgroundColor: Colors.white.withValues(alpha: 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Spacer(flex: 4),
              CustomTextButton(
                text: "sign up for facebook",
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
              ),
              CustomTextButton(
                text: "forgot password ?",
                onPressed: () {
                  Navigator.pushNamed(context, ForgotPasswordPage.routeName);
                },
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
