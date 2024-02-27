import 'package:flutter/material.dart';
import 'package:inicial/home.dart';

void main() {
  runApp(
    MaterialApp(theme: ThemeData(
        useMaterial3: true, 
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown
        ), 
      ), 
      home: MyHomePage(title: 'Aula Hoje'), 
      debugShowCheckedModeBanner: false,
    )
  );
}
