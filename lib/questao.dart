import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String questao;

  Questao(
    this.questao,
  );

  @override
  Widget build(BuildContext context) {
    // implement build Questão
    return Text(
      questao,
    );
  }
}
