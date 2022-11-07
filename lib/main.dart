import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mycatering/asset/asset.dart';
import 'package:mycatering/provider/provider_user.dart';
import 'package:mycatering/setup/splash.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
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
        backgroundColor: Color.fromARGB(255, 255, 250, 240),
        primaryColor: Color(0xff425f57),
        accentColor: Color(0xFFFFFFFF),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: maincolor,
        ),
        scaffoldBackgroundColor: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashscreen(),
      builder: EasyLoading.init(),
    );
  }
}
