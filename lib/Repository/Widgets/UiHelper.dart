import 'package:flutter/cupertino.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/Images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    String? FontFamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: FontFamily ?? "regular",
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
