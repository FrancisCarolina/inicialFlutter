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
      body: Center(
          child: Container(
        width: 350,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Titulo Lorem",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Texto sobre",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Texto sobre",
                              ),
                            ],
                          ))
                    ],
                  ),
                  ClipOval(
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/pt/e/e5/MonsterHigh_Characters.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //"https://upload.wikimedia.org/wikipedia/pt/e/e5/MonsterHigh_Characters.png",
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.phone), Text("41 99999-9999")],
                  ),
                  Row(
                    children: [Icon(Icons.mail), Text("email@gmail.com")],
                  )
                ],
              )
            ],
          ),
        ),
      )),
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
