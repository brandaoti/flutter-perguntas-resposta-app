import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontos;
  final Function() onResetar;

  Resultado(this.pontos, this.onResetar);

  String get resultado {
    if (pontos < 4) {
      return 'Um pouco ruim!';
    } else if (pontos < 8) {
      return 'Bem melhor!';
    } else if (pontos < 12) {
      return 'Muito bom!';
    } else {
      return 'Parabéns!';
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
