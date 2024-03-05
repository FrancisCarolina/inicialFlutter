import 'dart:html';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula Hoje'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ElevatedButton.icon(
        icon: Icon(Icons.add_alert_outlined),
        onPressed: () {},
        label: Text('Dispositivos Moveis'),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 80),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.purple,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
