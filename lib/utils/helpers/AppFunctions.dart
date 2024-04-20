import 'package:donvo/utils/constants/AppDeviceUtilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class AppFunctions {
  static void showSnackBar({required String message, required BuildContext context}){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert({required String title, required String message , required BuildContext context}){
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK'),),
        ],
      );
    });
  }

 

  static navigateToScreen({required BuildContext context, required Widget screen}) {
    if (AppDeviceUtilities.isIOS()) {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => screen),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
    }
  }

   static bool isDarkMode({required BuildContext context}){
    return Theme.of(context).brightness == Brightness.dark;
   }

   static Size screenSize({required BuildContext context}){
    return MediaQuery.of(context).size;
   }

    static double screenHeight({required BuildContext context}){
    return MediaQuery.of(context).size.height;
   }
    static double screenWidth({required BuildContext context}){
    return MediaQuery.of(context).size.width;
   }

   static String getFormattedDate(DateTime dateTime, {String format = 'dd MM yyyy'}){
    return DateFormat(format).format(dateTime);
   }

   static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
   }


   static List<Widget> wrapWidgets({required List<Widget> widgets,required int rowSize}){
    final wrappedList = <Widget>[];
    for(var i=0; i < widgets.length; i+= rowSize){
      final rowChildren = widgets.sublist(i, i+rowSize > widgets.length ? widgets.length : i+rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }

    return wrappedList;
   }
}