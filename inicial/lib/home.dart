
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
      ), body: Container(
          child: ClipRRect(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/pt/e/e5/MonsterHigh_Characters.png",
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
          ),
          padding: EdgeInsets.only(left: 80, top: 90),
          color: Colors.purple,
          margin: EdgeInsets.only(right: 60),
      ),
    );
  }
}
