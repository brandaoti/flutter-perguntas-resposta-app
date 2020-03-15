import 'package:flutter/material.dart';
import './questionario.dart';

class PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'pergunta': 'Qual sua cor favorita?',
      'respostas': [
        {'respValue': 'Vermelho', 'value': 8},
        {'respValue': 'Azul', 'value': 6},
        {'respValue': 'Verde', 'value': 4},
        {'respValue': 'Branco', 'value': 2},
      ]
    },
    {
      'pergunta': 'Qual sua comida favorita?',
      'respostas': [
        {'respValue': 'Arroz', 'value': 8},
        {'respValue': 'Feijão', 'value': 6},
        {'respValue': 'Macarrão', 'value': 4},
        {'respValue': 'Cuscuz', 'value': 2},
      ]
    },
    {
      'pergunta': 'Qual sua musica favorita?',
      'respostas': [
        {'respValue': 'Gospel', 'value': 8},
        {'respValue': 'Romantica', 'value': 6},
        {'respValue': 'Sertanejo', 'value': 4},
        {'respValue': 'Pop', 'value': 2},
      ]
    }
  ];

  // Função para chamar ativar no botão! #Resposta
  void _responder(int) {
    if (temPergunta) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
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
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              onResponder: _responder,
            )
          : Text('Parabéns!'),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() => PerguntasAppState();
}
