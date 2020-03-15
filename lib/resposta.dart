import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final Function() responder;

  Resposta(
    this.resposta,
    this.responder,
  );

  @override
  Widget build(BuildContext context) {
    // implement build RaisedButton,
    return RaisedButton(
      child: Text(resposta),
      onPressed: responder,
    );
  }
}
