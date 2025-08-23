import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Screens/otpscreen.dart'; // Import your OTP screen here

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  final TextEditingController phoneController = TextEditingController();

  LoginScreen({super.key});

  void _staticLogin(BuildContext context) {
    final phone = phoneController.text.trim();

    if (phone == "7007689616") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OtpScreen()), // Redirect to OTP screen
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid phone number")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF192618), // Dark forest green background
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1), // ✅ new way
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
            ],
          ),
          width: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign in with OTP",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3A2D), // Dark Olive Green instead of black
                ),
              ),
              const SizedBox(height: 24),

              // Phone Number TextField
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: const TextStyle(
                    color: Color(0xFF1C1C1C), // Muted black for label
                    fontSize: 12,
                  ),
                  hintText: "Enter your Phone Number",
                  filled: true,
                  fillColor: const Color(0xFFDDE3DA), // Pale sage background
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFF192618)), // Theme green
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Send OTP Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _staticLogin(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "We'll send you a secure OTP. No password needed.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
