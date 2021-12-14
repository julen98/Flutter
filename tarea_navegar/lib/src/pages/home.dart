import 'package:flutter/material.dart';
import 'package:tarea_navegar/src/pages/about.dart';

class HomePage extends StatefulWidget {
  final String title = 'Home';
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'about'),
        tooltip: 'Abrir About',
        backgroundColor: Colors.orange[600],
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
