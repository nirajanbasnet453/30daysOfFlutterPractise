import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int day = 30;
  String name = 'Nirajan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text('Welcome to $day days of flutter by $name'),
      ),
      drawer: const Drawer(),
    );
  }
}
