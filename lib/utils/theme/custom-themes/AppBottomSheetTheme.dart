import 'package:flutter/material.dart';

class AppBottomSheetTheme {
  AppBottomSheetTheme._();


  // LIGHT THEME
  static final BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(16))
  );

   // DASRK THEME
  static final BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(16))
  );
}