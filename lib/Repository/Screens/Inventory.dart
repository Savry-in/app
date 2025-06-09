import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Widgets/uiHelper.dart';
import 'package:savry_app_development/Repository/widgets/topNavBar.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(),
      backgroundColor: Colors.amber[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UiHelper.customText(
                text: "Expiring soon",
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
