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
      body: TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.ac_unit),
        label: Text('Dispositivos Moveis'),
        style: TextButton.styleFrom(padding: EdgeInsets.all(70)),
      ),
    );
  }
}
