import 'package:flutter/material.dart';
import 'package:tarea_navegar/src/pages/error.dart';
import 'package:tarea_navegar/src/pages/services.dart';
import 'package:tarea_navegar/src/pages/team.dart';

class AboutPage extends StatefulWidget {
  final String title = 'About';
  const AboutPage({Key? key}) : super(key: key);
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const Spacer(flex: 20),
            Align(
              child: FloatingActionButton(
                onPressed: () => Navigator.pushNamed(context, 'services'),
                tooltip: 'Abrir Services',
                backgroundColor: Colors.blue,
                child: const Text('S'),
                heroTag: ServicesPage,
              ),
              alignment: Alignment.bottomRight,
            ),
            const Spacer(),
            Align(
              child: FloatingActionButton(
                onPressed: () => Navigator.pushNamed(context, 'team'),
                tooltip: 'Abrir Team',
                backgroundColor: Colors.blue,
                child: const Text('T'),
                heroTag: TeamPage,
              ),
              alignment: Alignment.bottomRight,
            ),
            const Spacer(),
            Align(
              child: FloatingActionButton(
                onPressed: () => Navigator.pushNamed(context, 'error'),
                tooltip: 'Abrir Error',
                backgroundColor: Colors.red,
                child: const Text('E'),
                heroTag: ErrorPage,
              ),
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}