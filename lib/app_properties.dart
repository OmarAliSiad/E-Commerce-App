import 'package:flutter/material.dart';

// ألوان قريبة من الأسود
const Color black = Color(0xff2A2A2A); // رمادي داكن جداً
const Color mediumYellow = Color(0xff1F1F1F); // رمادي أغمق
const Color darkYellow = Color(0xff151515); // رمادي قريب من الأسود
const Color transparentYellow = Color.fromRGBO(
  42,
  42,
  42,
  0.7,
); // رمادي داكن شفاف
const Color darkGrey = Color(0xff0A0A0A); // أسود تقريباً
const Color appBarTextColor = Colors.white; // أسود تقريباً
const Color appBarLeadingColor = Colors.white; // أسود تقريباً

// تدرج لوني بألوان داكنة
const LinearGradient mainButton = LinearGradient(
  colors: [
    Color.fromRGBO(30, 30, 30, 1), // رمادي داكن
    Color.fromRGBO(20, 20, 20, 1), // رمادي أغمق
    Color.fromRGBO(10, 10, 10, 1), // قريب من الأسود
  ],
  begin: FractionalOffset.topCenter,
  end: FractionalOffset.bottomCenter,
);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black26, offset: Offset(0, 3), blurRadius: 6),
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}
