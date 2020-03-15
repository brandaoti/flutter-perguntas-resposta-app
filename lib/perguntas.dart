import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  final List<String> _perguntas = [
    'Qual sua cor favorita?',
    'Qual sua comida favorita?',
    'Qual sua musica favorita?',
  ];

  // Função para chamar ativar no botão! #Resposta
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    //print(_perguntaSelecionada);
  }

  // Função responsavel por resetar
  void _resetar() {}

  // Metodo para validação
  bool get temPergunta {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // implement build Scaffold

    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas & Resposta'),
        centerTitle: true,
      ),
      body: temPergunta
          ? Column(
              children: <Widget>[
                Questao(_perguntas[_perguntaSelecionada]),
                Resposta('resposta 1', _responder),
                Resposta('resposta 2', _responder),
                Resposta('resposta 2', _responder),
              ],
            )
          : Text('Parabéns!'),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() => PerguntasAppState();
}
