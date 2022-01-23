import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/header.dart';

class Sexo extends StatefulWidget {
  const Sexo({Key? key}) : super(key: key);

  @override
  _SexoState createState() => _SexoState();
}

class _SexoState extends State<Sexo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Body(),
        ],
      ),
    );
  }
}
