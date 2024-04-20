

import 'package:flutter/material.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  // LIGHT THEME
  static final OutlinedButtonThemeData lightOutlinedButtonThemeData= OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side:const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600,),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  // DARK THEME
  static final OutlinedButtonThemeData darkOutlinedButtonThemeData= OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side:const BorderSide(color: Colors.blueAccent),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600,),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
}