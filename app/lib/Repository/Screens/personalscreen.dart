import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Widgets/preferencerow.dart';
import 'package:savry_app_development/Repository/Widgets/progressbar.dart';
import 'package:savry_app_development/Repository/Widgets/uihelper.dart';

class familyPreferenceScreen extends StatefulWidget {
  @override
  _familyPreferenceScreenState createState() => _familyPreferenceScreenState();
}

class _familyPreferenceScreenState extends State<familyPreferenceScreen> {
  int totalPages = 4;
  int currentPage = 3;
  int selectedFamilyMembers = 3;
  final List<String> familyOptions = [
    'skip',
    'two',
    'three',
    'four',
    'five',
    'six',
    'custom',
  ];

  void nextPage() {
    if (currentPage < totalPages) {
      setState(() {
        currentPage++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF192618),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // 🟣 Dynamic Progress Bar
              progressBar(totalSteps: totalPages, currentStep: currentPage),
              SizedBox(height: 20),

              // 🔘 Next button for testing
              Uihelper.customText(
                text: "Family and Food Preferences",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
              const SizedBox(height: 16),
              Uihelper.customText(
                text:
                    "Your data stays on your terms. We use it only to offer smarter suggestions and improve your experience — never for ads or external use.",
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.normal,
                fontSize: 10,
              ),

              const SizedBox(height: 32),
              preferenceRow(title: "No. of Family Members", value: "not set"),
              preferenceRow(title: "No. of Adults", value: "not Set"),
              preferenceRow(title: "No. of Children", value: "not Set"),
              preferenceRow(title: "Family Diet Type", value: "not set"),
              preferenceRow(
                title: "How Health-conscious\nis your family",
                value: "not set",
              ),

              const Spacer(),

              SizedBox(
                height: 150,
                child: CupertinoPicker(
                  scrollController: FixedExtentScrollController(
                    initialItem: selectedFamilyMembers,
                  ),
                  itemExtent: 40,
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      selectedFamilyMembers = index;
                    });
                  },
                  children: familyOptions.map(
                    (option) => Center(
                      child: Text(
                        option,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
