import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Screens/inventory.dart';
import 'package:savry_app_development/Repository/Screens/signin.dart';
import 'package:savry_app_development/Repository/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  final TextEditingController usernameController = TextEditingController();

  LoginScreen({super.key});

  void _staticLogin(BuildContext context) {
    final username = usernameController.text;

    if (username == "7007689616") {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => SigninScreen()),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid username or password")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2DCAC), // background color from image
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          width: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Login with OTP",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
