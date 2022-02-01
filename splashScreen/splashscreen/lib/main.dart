import 'package:flutter/material.dart';
import 'package:splashscreen/pages/splash_screen.dart';
import 'package:splashscreen/palette.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const color = Color(0xff007aff);

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hold It!',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}