import 'package:flutter/material.dart';

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement build MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perguntas & Resposta',
      theme: ThemeData(primaryColor: Colors.purpleAccent),
      // home: , Instanciar a class com a estrutura do layout
    );
  }
}
