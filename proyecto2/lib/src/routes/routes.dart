import 'package:flutter/cupertino.dart';
import 'package:proyecto2/src/pages/alert_page.dart';
import 'package:proyecto2/src/pages/avatar_page.dart';
import 'package:proyecto2/src/pages/elegir_item.dart';
import 'package:proyecto2/src/pages/inputs_page.dart';
import 'package:proyecto2/src/pages/slider_page.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context)       => const ElegirItem(),
    'Alertas': (BuildContext context) => const AlertPage(),
    'Avatars': (BuildContext context) => const AvatarPage(),
    'Sliders': (BuildContext context) => const SliderPage(),
    'Inputs': (BuildContext context) => const InputsPage(),
  };
}