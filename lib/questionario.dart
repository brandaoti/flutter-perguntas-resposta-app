import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final Function(int) onResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.onResponder,
  });

  bool get temPergunta {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPergunta ? perguntas[perguntaSelecionada]['respostas'] : null;

    // implement build Questões
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['pergunta']),
        ...respostas
            .map(
              (resp) => Resposta(
                resp['respValue'],
                () => onResponder(resp['value']),
              ),
            )
            .toList()
      ],
    );
  }
}
