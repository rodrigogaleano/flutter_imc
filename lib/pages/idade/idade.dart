// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/pages/altura_peso/altura_peso.dart';
import 'package:imc/services/constants.dart';

class Idade extends StatefulWidget {
  const Idade({Key? key}) : super(key: key);

  @override
  _IdadeState createState() => _IdadeState();
}

class _IdadeState extends State<Idade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora IMC',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          //---------- Header ---------
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: kDefaultPadding * 6, left: kDefaultPadding),
                child: Text(
                  'Eu tenho...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          // ---------- CONTENT ---------
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
          ),

          // ----- Bot??o -----
          Spacer(),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlturaPeso()),
                  );
                },
                child: Text(
                  'Pr??ximo',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
