import 'package:flutter/material.dart';

class PerguntasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement build Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas & Resposta'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Qual sua cor favorita?',
            style: TextStyle(fontSize: 24),
          ),
          RaisedButton(child: Text('Resposta #1'), onPressed: null),
          RaisedButton(child: Text('Resposta #2'), onPressed: null),
          RaisedButton(child: Text('Resposta #4'), onPressed: null),
        ]
      )
    );
  }
}
