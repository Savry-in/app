import 'package:flutter/material.dart';

class Uihelper {
  static customImage({required String img}) {
    return Image.asset("assets/Images/$img");
  }

  static customText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    String? fontFamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily ?? "regular",
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  static buildFeature({
    required String iconPath,
    required String title,
    required String subTitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFF3BAE49),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            iconPath,
            width: 24,
            height: 24,
            color: Colors.white, // optional: if image is a vector or monochrome
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Uihelper.customText(
                text: title,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              const SizedBox(height: 4),
              Uihelper.customText(
                text: subTitle,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
