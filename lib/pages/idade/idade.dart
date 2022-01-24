// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/services/constants.dart';
import 'components/idadeBody.dart';
import 'components/idadeHeader.dart';

class Idade extends StatefulWidget {
  const Idade({ Key? key }) : super(key: key);

  @override
  _IdadeState createState() => _IdadeState();
}

class _IdadeState extends State<Idade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          idadeHeader(),
          idadeBody(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Calculadora IMC'),
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: true,
    );
  }
}