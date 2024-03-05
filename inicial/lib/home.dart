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
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_copy),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(value: 0, child: Text("MyAcconut")),
                  PopupMenuItem<int>(value: 1, child: Text("Settings")),
                  PopupMenuItem<int>(value: 2, child: Text("Logout")),
                ];
              },
              onSelected: (value) {
                //aqui
              },
            )
          ],
        ),
        body: Row(children: [Text('texto')]));
  }
}
