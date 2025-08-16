import 'package:abanoub_assiment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../custom widgets/custom_Input_field.dart';
import '../custom widgets/custom_text_button.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "Register Screen";
  final formKey = GlobalKey<FormState>();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Sign up'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 60),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Icon(Icons.facebook, size: 100, color: Colors.white),
              ),
              SizedBox(height: 40),

              // Full Name
              CustomInputField(hint: "Full Name"),
              SizedBox(height: 16),

              // Email
              CustomInputField(hint: "Email"),
              SizedBox(height: 16),

              // Phone
              CustomInputField(hint: "Phone"),
              SizedBox(height: 16),

              // Password
              CustomInputField(hint: "Password"),
              SizedBox(height: 16),

              // Confirm Password
              CustomInputField(hint: "Confirm Password"),
              SizedBox(height: 24),

              // Register Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withValues(alpha: 0.3),
                  padding: EdgeInsets.symmetric(vertical: 16),
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
                  "Register",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(height: 24),

              // Already have account
              Center(
                child: CustomTextButton(
                  text: "Already have an account? Login",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
