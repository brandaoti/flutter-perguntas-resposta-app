import 'package:flutter/material.dart';

void main() => runApp(MyMaterial());

class MyMaterial extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perguntas & Resposta',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas & Resposta'),
        ),
      ),
    );
  }
}
