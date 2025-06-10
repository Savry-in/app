import 'package:flutter/cupertino.dart';

class UiHelper {
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
}
