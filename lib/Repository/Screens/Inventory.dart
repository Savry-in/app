import 'package:flutter/material.dart';
import '../widgets/TopNavBar.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(),
      body: Container(
        color: Colors.amber[100],
        child: Center(
          child: Text(
            'Home Page After Login',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
