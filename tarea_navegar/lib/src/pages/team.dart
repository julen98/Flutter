import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  final String title = 'Team';
  const TeamPage({Key? key}) : super(key: key);
  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.pink[800],
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