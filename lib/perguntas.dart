import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

class PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoFinal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'pergunta': 'Qual sua cor favorita?',
      'respostas': [
        {'respValue': 'Vermelho', 'value': 6},
        {'respValue': 'Azul', 'value': 4},
        {'respValue': 'Verde', 'value': 2},
        {'respValue': 'Branco', 'value': 1},
      ]
    },
    {
      'pergunta': 'Qual sua comida favorita?',
      'respostas': [
        {'respValue': 'Arroz', 'value': 6},
        {'respValue': 'Feijão', 'value': 4},
        {'respValue': 'Macarrão', 'value': 2},
        {'respValue': 'Cuscuz', 'value': 1},
      ]
    },
    {
      'pergunta': 'Qual sua musica favorita?',
      'respostas': [
        {'respValue': 'Gospel', 'value': 6},
        {'respValue': 'Romantica', 'value': 4},
        {'respValue': 'Sertanejo', 'value': 2},
        {'respValue': 'Pop', 'value': 1},
      ]
    }
  ];

  // Função para chamar ativar no botão! #Resposta
  void _responder(int pontos) {
    if (temPergunta) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoFinal += pontos;
      });
      print(_pontuacaoFinal);
      print(pontos);
    }
  }

  // Função responsavel por resetar
  void _resetar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoFinal = 0;
    });
  }

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
          : Resultado(_pontuacaoFinal, _resetar),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() => PerguntasAppState();
}
