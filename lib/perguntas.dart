import 'package:flutter/material.dart';

class PerguntasApp extends StatelessWidget {
  var _perguntaSelecionada = 0;

  final List<String> _perguntas = [
    'Qual sua cor favorita?',
    'Qual sua comida favorita?',
    'Qual sua musica favorita?',
  ];

  void _responder() {
    _perguntaSelecionada++;
    print(_perguntaSelecionada);
  }

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
            _perguntas[_perguntaSelecionada],
            style: TextStyle(fontSize: 24),
          ),
          RaisedButton(child: Text('Resposta #1'), onPressed: _responder),
          RaisedButton(child: Text('Resposta #2'), onPressed: _responder),
          RaisedButton(child: Text('Resposta #4'), onPressed: _responder),
        ],
      ),
    );
  }
}
