import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String questao;

  Questao(
    this.questao,
  );

  @override
  Widget build(BuildContext context) {
    // implement build Questão
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questao,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
