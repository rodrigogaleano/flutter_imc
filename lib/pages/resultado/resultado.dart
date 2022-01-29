// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/pages/altura_peso/altura_peso.dart';
import 'package:imc/services/constants.dart';

class Resultado extends StatefulWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resultado'),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Resultado',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                '20.0',
                style: TextStyle(fontSize: 72),
              ),
              Text(
                'Feedback',
                style: TextStyle(
                  fontSize: 22,
                ),
              )
            ],
          ),
        ));
  }
}
