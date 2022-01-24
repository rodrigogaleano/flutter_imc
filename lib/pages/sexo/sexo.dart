import 'package:flutter/material.dart';
import 'package:imc/services/constants.dart';
import 'components/sexoBody.dart';
import 'components/sexoHeader.dart';

class Sexo extends StatefulWidget {
  const Sexo({Key? key}) : super(key: key);

  @override
  _SexoState createState() => _SexoState();
}

class _SexoState extends State<Sexo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC', style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          sexoHeader(),
          sexoBody(),
        ],
      ),
    );
  }
}
