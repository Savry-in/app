import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Widgets/preferencerow.dart';
import 'package:savry_app_development/Repository/Widgets/progressbar.dart';
import 'package:savry_app_development/Repository/Widgets/uihelper.dart';

class FamilyPreferenceScreen extends StatefulWidget {
  const FamilyPreferenceScreen({super.key});
  // ignore: library_private_types_in_public_api

  @override
  FamilyPreferenceScreenState createState() => FamilyPreferenceScreenState();
}

class FamilyPreferenceScreenState extends State<FamilyPreferenceScreen> {
  int totalPages = 4;
  int currentPage = 3;
  String selectedField = '';
  int selectedFamilyMembers = -1;
  int selectedAdults = -1;
  int selectedChildren = -1;
  int selectedDietType = -1;
  int selectedHealth = -1;
  String currentField = '';
  final List<String> numberOptions = [
    'skip',
    'two',
    'three',
    'four',
    'five',
    'six',
    'custom',
  ];
  final List<String> dietOptions = ['veg', 'non-veg', 'mixed'];
  final List<String> healthOptions = ['not at all', 'slightly', 'very'];

  List<String> get currentOptions {
    switch (currentField) {
      case 'family':
      case 'adults':
      case 'children':
        return numberOptions;
      case 'diet':
        return dietOptions;
      case 'health':
        return healthOptions;
      default:
        return [];
    }
  }

  int getCurrentIndex() {
    switch (currentField) {
      case 'family':
        return selectedFamilyMembers;
      case 'adults':
        return selectedAdults;
      case 'children':
        return selectedChildren;
      case 'diet':
        return selectedDietType;
      case 'health':
        return selectedHealth;
      default:
        return 0;
    }
  }

  void updateSelectedIndex(int index) {
    setState(() {
      switch (selectedField) {
        case 'familyMembers':
          selectedFamilyMembers = index;
          break;
        case 'adults':
          selectedAdults = index;
          break;
        case 'children':
          selectedChildren = index;
          break;
        case 'diet':
          selectedDietType = index;
          break;
        case 'health':
          selectedHealth = index;
          break;
      }
    });
  }

  void nextPage() {
    if (currentPage < totalPages) {
      setState(() {
        currentPage++;
      });
    }
  }

  String getValueLbel(int index, List<String> options) {
    return index >= 0 ? options[index] : 'not set';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF192618),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProgressBar(totalSteps: totalPages, currentStep: currentPage),
                      const SizedBox(height: 20),
                      Uihelper.customText(
                        text: "Family and Food Preferences",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                      const SizedBox(height: 16),
                      Uihelper.customText(
                        text:
                        "Your data stays on your terms. We use it only to offer smarter suggestions and improve your experience — never for ads or external use.",
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      ),
                      const SizedBox(height: 32),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentField = 'family';
                            selectedField = 'familyMembers';
                          });
                        },
                        child: PreferenceRow(
                          title: "No. of Family Members",
                          value: getValueLbel(selectedFamilyMembers, numberOptions),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentField = 'adults';
                            selectedField = 'adults';
                          });
                        },
                        child: PreferenceRow(
                          title: "No. of Adults",
                          value: getValueLbel(selectedAdults, numberOptions),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentField = 'children';
                            selectedField = 'children';
                          });
                        },
                        child: PreferenceRow(
                          title: "No. of Children",
                          value: getValueLbel(selectedChildren, numberOptions),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentField = 'diet';
                            selectedField = 'diet';
                          });
                        },
                        child: PreferenceRow(
                          title: "Family Diet Type",
                          value: getValueLbel(selectedDietType, dietOptions),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentField = 'health';
                            selectedField = 'health';
                          });
                        },
                        child: PreferenceRow(
                          title: "How Health-conscious\nis your family",
                          value: getValueLbel(selectedHealth, healthOptions),
                        ),
                      ),

                      const SizedBox(height: 70),

                      if (currentField.isNotEmpty)
                        SizedBox(
                          height: 150,
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                              initialItem: getCurrentIndex(),
                            ),
                            itemExtent: 60,
                            onSelectedItemChanged: (int index) {
                              updateSelectedIndex(index);
                            },
                            children: currentOptions
                                .map((option) => Center(
                              child: Text(
                                option,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            ))
                                .toList(),
                          ),
                        ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}
