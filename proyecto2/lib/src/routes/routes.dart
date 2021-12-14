import 'package:flutter/cupertino.dart';
import 'package:proyecto2/src/pages/alert_page.dart';
import 'package:proyecto2/src/pages/avatar_page.dart';
import 'package:proyecto2/src/pages/elegir_item.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => const ElegirItem(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}
