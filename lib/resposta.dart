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
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        onPressed: responder,
        child: Text(resposta),
        textColor: Colors.white,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
