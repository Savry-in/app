import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Widgets/uihelper.dart';
import 'package:savry_app_development/Repository/Widgets/topnavbar.dart';


class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topnavbar(),
      backgroundColor: Colors.amber[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Uihelper.customText(
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
