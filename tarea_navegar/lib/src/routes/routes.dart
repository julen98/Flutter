import 'package:flutter/cupertino.dart';
import 'package:tarea_navegar/src/pages/about.dart';
import 'package:tarea_navegar/src/pages/error.dart';
import 'package:tarea_navegar/src/pages/home.dart';
import 'package:tarea_navegar/src/pages/services.dart';
import 'package:tarea_navegar/src/pages/team.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => const HomePage(),
    'about': (BuildContext context) => const AboutPage(),
    'services': (BuildContext context) => const ServicesPage(),
    'team': (BuildContext context) => const TeamPage(),
    'error': (BuildContext context) => const ErrorPage(),
  };
}
