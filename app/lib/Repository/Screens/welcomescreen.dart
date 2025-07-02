import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Screens/personalscreen.dart';

import '../Widgets/uihelper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF192618),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Uihelper.customText(
                  text: "Welcome to Savry",
                  color: Color(0xFFFFFFFF),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 100),

              Uihelper.buildFeature(
                iconPath: 'assets/icon/Checklist.png',
                title: "Stay Stocked",
                subTitle:
                    "Track kitchen inventory in real-time\nand avoid running out of essentials",
              ),

              const SizedBox(height: 30),
              Uihelper.buildFeature(
                iconPath: "assets/icon/healthy-eating.png",
                title: "Eat Smarter",
                subTitle:
                    "Get healthy recipe suggestion based \non what's already in your kitchen",
              ),

              const SizedBox(height: 30),
              Uihelper.buildFeature(
                iconPath: "assets/icon/heart-health.png",
                title: "Smart Insights",
                subTitle:
                    "Visualize what you use most, spot forgotten \nitems, and make smarter grocery decisions",
              ),
              const Spacer(),
              
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6A726B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => FamilyPreferenceScreen()),
                      );
                    },
                    child: Uihelper.customText(text: "Get Started", color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
