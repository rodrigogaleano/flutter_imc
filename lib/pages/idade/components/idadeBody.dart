// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/services/constants.dart';

class idadeBody extends StatefulWidget {
  const idadeBody({Key? key}) : super(key: key);

  @override
  _idadeBodyState createState() => _idadeBodyState();
}

class _idadeBodyState extends State<idadeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusColor: kPrimaryColor,
                  fillColor: kPrimaryColor,
                  hoverColor: kPrimaryColor,
                ),
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Anos de idade.',
              style: TextStyle(
                fontSize: 26,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
