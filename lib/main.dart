import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mycatering/screen/splashscreen/splash.dart';
import 'package:mycatering/utils/constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyCatering',
      theme: ThemeData(
        backgroundColor: whiteColor,
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: primary,
        ),
        scaffoldBackgroundColor: whiteColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const splashscreen(),
    );
  }
}
