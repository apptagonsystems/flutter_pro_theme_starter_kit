import 'dart:async';
import 'dart:developer';

import 'package:donvo/screens/authentication/onboarding/OnboardingScreen.dart';
import 'package:donvo/utils/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() {
  // run app
  runZonedGuarded(
    () async {
      // INITIALIZE .ENV
      await dotenv.load(fileName: ".env");
      // INITIALIZE WIDGETS BINDING
      WidgetsFlutterBinding.ensureInitialized();

      // INITIALIZE FIREBASE

      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );

      // initialize supabase
      // await Supabase.initialize(
      //   url: AppSupabase.supabaseURL,
      //   anonKey: AppSupabase.supabaseAnonKey,
      // );

      runApp(MyApp());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Donvo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
