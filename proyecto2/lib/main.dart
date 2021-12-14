import 'package:flutter/material.dart';
import 'package:proyecto2/src/pages/elegir_item.dart';
import 'package:proyecto2/src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ElegirItem(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('La ruta no encontrada es ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext builder) => const ElegirItem());
      },
    );
  }
}
