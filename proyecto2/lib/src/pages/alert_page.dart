import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_location,
          color: Colors.pinkAccent,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}