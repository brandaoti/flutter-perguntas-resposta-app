import 'package:flutter/material.dart';
import 'package:perguntas_resposta_app/perguntas.dart';

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement build MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perguntas & Resposta',
      theme: ThemeData(primaryColor: Colors.purpleAccent),
      home: PerguntasApp(), //Instanciar a class com a estrutura do layout
    );
  }
}
