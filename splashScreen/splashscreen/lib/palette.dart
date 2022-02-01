// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xff007aff, // This will be the color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{
      50: const Color(0xff006ee6), //10% 
      100: const Color(0xff0062cc), //20% 
      200: const Color(0xff0055b3), //30% 
      300: const Color(0xff004999), //40% 
      400: const Color(0xff003d80), //50% 
      500: const Color(0xff003166), //60% 
      600: const Color(0xff00254d), //70% 
      700: const Color(0xff001833), //80% 
      800: const Color(0xff000c19), //90% 
      900: const Color(0xff000000), //100% 
    }, 
  ); 
}