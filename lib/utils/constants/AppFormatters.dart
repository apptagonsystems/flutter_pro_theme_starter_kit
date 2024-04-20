import 'package:intl/intl.dart';

class AppFormatters{
  static String formatDate(DateTime? dateTime){
    dateTime ??= DateTime.now();
    return DateFormat('dd-MMM-yyy').format(dateTime);
  }


  static String formatCurrency (double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    // assuming a ten digit phone number
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
    }
    // add more custom logic
    return phoneNumber;
  }

  // static String internationalFormatPhoneNumber(String phoneNumber){
  //   // remove any non-digit characters
  //   var digitsOnly = phoneNumber.replaceAll(RegExp(r'/D'), '');

  //   // EXTRACT THE COUNTRY CODE FROM THE DIGITS ONLY
  //   String countryCode = '+${digitsOnly.substring(0,2)}';
  //   digitsOnly = digitsOnly.substring(2);

  //   // add the remaining digits with proper formatting
  //   final formattedNumber= StringBuffer();
  //   formattedNumber.write('($countryCode)');

  //   int i = 0;
  //    while (i <digitsOnly.length){
  //     int groupLength = 2;
  //     if(i ==0 && countryCode == '+1'){
  //       groupLength =3;
  //     }

  //     int end = i * groupLength;
  //     formattedNumber.write(digitsOnly.substring(i, end));

  //     if(end < digitsOnly.length){
  //       formattedNumber.write(' ');
  //     }

  //     i =end;
  //    }

  //    return  formattedNumber;
  // }
}