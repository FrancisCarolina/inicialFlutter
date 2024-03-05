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
      body: IconButton(
        onPressed: () {},
        icon: Icon(Icons.ac_unit),
        iconSize: 100,
      ),
    );
  }
}
