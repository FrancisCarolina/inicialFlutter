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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.refresh,
          size: 25,
        ),
        shape: CircleBorder(),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.open_with_rounded),
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dialer_sip_rounded),
              title: Text('Item 2'),
              onTap: () {},
            ),
            Divider(
              height: 10,
            ),
            ExpansionTile(
              childrenPadding: EdgeInsets.only(left: 30),
              title: Text("Lista Expansivel"),
              leading: Icon(Icons.person_add),
              children: [
                ListTile(
                  leading: Icon(Icons.dialer_sip_rounded),
                  title: Text("sub item 1"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.sailing),
                  title: Text("sub item 2"),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Card(child: Text("Tads22"), color: Colors.blueGrey),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        notchMargin: 7,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
