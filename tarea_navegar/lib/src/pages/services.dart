import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  final String title = 'Services';
  const ServicesPage({Key? key}) : super(key: key);
  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.yellow[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'home'),
        tooltip: 'Abrir Home',
        backgroundColor: Colors.blue,
        child: const Text('H'),
      ),
    );
  }
}