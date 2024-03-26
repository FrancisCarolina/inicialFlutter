import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _imgApp = Image.asset('assets/images/padrao.png');
  var _msg = 'Quem vence o Jogo?';

  void _joga(String escolhaUser) {
    final listaOp = ['pedra', 'papel', 'tesoura'];
    final escolhaApp = listaOp[Random().nextInt(3)];

    setState(() {
      _imgApp = Image.asset('assets/images/$escolhaApp.png');
      _msg = _resultado(escolhaUser, escolhaApp);
    });
  }

  String _resultado(String escolhaUser, String escolhaApp) {
    if (escolhaUser == escolhaApp) {
      return "Empatou";
    } else if ((escolhaApp == 'pedra' && escolhaUser == 'tesoura') ||
        (escolhaApp == 'tesoura' && escolhaUser == 'papel') ||
        (escolhaApp == 'papel' && escolhaUser == 'pedra')) {
      return 'App Venceu';
    } else {
      return 'Voce Venceu';
    }
  }

  void _restartGame() {
    setState(() {
      _imgApp = Image.asset('assets/images/padrao.png');
      _msg = 'Quem vence o Jogo?';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpo TADS 22'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _restartGame,
        child: Icon(
          Icons.refresh,
          size: 25,
        ),
        shape: CircleBorder(),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textComponent("Escolha App"),
          SizedBox(
            height: 20,
          ),
          _imgApp,
          SizedBox(
            height: 20,
          ),
          textComponent(_msg),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              chooseUser("pedra"),
              chooseUser("papel"),
              chooseUser("tesoura"),
            ],
          )
        ],
      )),
    );
  }

  GestureDetector chooseUser(String imageName) {
    return GestureDetector(
      onTap: () => _joga(imageName),
      child: Image.asset(
        'assets/images/${imageName}.png',
        height: 100,
      ),
    );
  }

  Text textComponent(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
}
