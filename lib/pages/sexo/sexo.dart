// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/pages/idade/idade.dart';
import 'package:imc/services/constants.dart';

class Sexo extends StatefulWidget {
  const Sexo({Key? key}) : super(key: key);

  @override
  _SexoState createState() => _SexoState();
}

class _SexoState extends State<Sexo> {
  //Variáveis
  late int _value = 0;

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
                  'Eu sou...',
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ----- Homem -----
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: kPrimaryColor,
                          size: 42,
                        ),
                        Text(
                          'Homem',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: kPrimaryColor,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  // ----- Mulher -----
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: kPrimaryColor,
                          size: 42,
                        ),
                        Text(
                          'Mulher',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Radio(
                          value: 2,
                          groupValue: _value,
                          activeColor: kPrimaryColor,
                          onChanged: (int? value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ----- Botão -----
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
                    MaterialPageRoute(builder: (context) => Idade()),
                  );
                },
                child: Text(
                  'Próximo',
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
