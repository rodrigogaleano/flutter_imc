import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  const Resultado({ Key? key }) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Resultado'),),
    );
  }
}