// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/pages/sexo/sexo.dart';
import 'package:imc/services/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Calculadora IMC',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/home.png'),
            ),
            Spacer(),
            Text(
              'O índice de massa corporal é uma medida internacional usada para calcular se uma pessoa está no peso ideal.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sexo()),
                    );
                  },
                  icon: Icon(Icons.favorite),
                  label: Text(
                    'Vamos lá!',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
