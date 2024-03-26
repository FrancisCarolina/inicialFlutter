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
  String _msg = 'Quem vence o Jogo?';
  int _vitoriaUser = 0;
  int _vitoriaApp = 0;
  int _empate = 0;

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
      setState(() {
        _empate = _empate + 1;
      });
      return "Empatou";
    } else if ((escolhaApp == 'pedra' && escolhaUser == 'tesoura') ||
        (escolhaApp == 'tesoura' && escolhaUser == 'papel') ||
        (escolhaApp == 'papel' && escolhaUser == 'pedra')) {
      setState(() {
        _vitoriaApp = _vitoriaApp + 1;
      });
      return 'App Venceu';
    } else {
      setState(() {
        _vitoriaUser = _vitoriaUser + 1;
      });
      return 'Voce Venceu';
    }
  }

  void _restartGame() {
    setState(() {
      _imgApp = Image.asset('assets/images/padrao.png');
      _msg = 'Quem vence o Jogo?';
      _vitoriaUser = 0;
      _vitoriaApp = 0;
      _empate = 0;
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
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              placar("Vitórias", '$_vitoriaUser'),
              placar("Empates", '$_empate'),
              placar("Derrotas", '$_vitoriaApp')
            ],
          )
        ],
      )),
    );
  }

  Column placar(String text, String qnt) {
    return Column(
      children: [Text(text), Text(qnt)],
    );
  }

  GestureDetector chooseUser(String imageName) {
    return GestureDetector(
      onTap: () => _joga(imageName),
      child: Image.asset(
        'assets/images/$imageName.png',
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
