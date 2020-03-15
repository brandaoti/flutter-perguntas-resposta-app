import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function() onResetar;

  Resultado(this.pontuacao, this.onResetar);

  String get resultado {
    if (pontuacao < 8) {
      return 'Um pouco ruim! $pontuacao';
    } else if (pontuacao < 12) {
      return 'Bem melhor! $pontuacao';
    } else if (pontuacao < 16) {
      return 'Muito bom! $pontuacao';
    } else {
      return 'Parabéns! $pontuacao';
    }
  }

  @override
  Widget build(BuildContext context) {
    // implement build {Text e FlatButton de resetar}
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Text(
            resultado,
            style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: onResetar,
          child: Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColorDark
            ),
          ),
        ),
      ],
    );
  }
}
