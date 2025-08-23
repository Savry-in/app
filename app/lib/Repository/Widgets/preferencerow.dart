import 'package:flutter/material.dart';
import 'package:savry_app_development/Repository/Widgets/uihelper.dart';

class PreferenceRow extends StatelessWidget {
  final String title;
  final String value;
  const PreferenceRow({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Expanded(child: Uihelper.customText(text: title, color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
        ),
          Uihelper.customText(text: value, color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
        ],
      ),
    );
  }
}
