

import 'package:donvo/utils/theme/custom-themes/AppAppBarTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppBottomSheetTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppCheckBoxTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppChipTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppElevatedButtonTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppOutlinedButtonTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppTextFieldTheme.dart';
import 'package:donvo/utils/theme/custom-themes/AppTextTheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
   
   static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipThemeData,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckboxThemeData,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonThemeData,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  
   );
   static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipThemeData,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckboxThemeData,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetThemeData,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonThemeData,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,);
}