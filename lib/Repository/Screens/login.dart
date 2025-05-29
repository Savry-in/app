import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Screens/Inventory.dart';
import 'package:savry_app_development/Repository/Widgets/TopNavBar.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  final TextEditingController usernameController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  LoginScreen({super.key});

  void _staticLogin(BuildContext context){
    final username=usernameController.text;
    final password=passwordController.text;

    if(username=="admin"&&password=="123"){
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => InventoryScreen()),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid username or password")),
      );
    }
  }




  @override
  Widget build(BuildContext context){
    return Scaffold(
          backgroundColor: const Color(0xFFF2DCAC), // background color from image
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                
                const SizedBox(height: 30),
                const Text('Username'),
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    isDense: true,
                    contentPadding: EdgeInsets.only(bottom: 5),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Password'),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    isDense: true,
                    contentPadding: EdgeInsets.only(bottom: 5),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () => _staticLogin(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3C4F3F), // green button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}