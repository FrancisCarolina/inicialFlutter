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
        body: Row(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.water),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Text("teste de scroll")
          ],
        ));
  }
}
