// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/pages/resultado/resultado.dart';
import 'package:imc/services/constants.dart';

class AlturaPeso extends StatefulWidget {
  const AlturaPeso({Key? key}) : super(key: key);

  @override
  _AlturaPesoState createState() => _AlturaPesoState();
}

class _AlturaPesoState extends State<AlturaPeso> {
  double sliderAltura = 50;
  double sliderPeso = 10;
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

          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ----- Altura -----
                Text(
                  'Altura: ${sliderAltura.round()} cm',
                  style: TextStyle(
                    fontSize: 24,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  value: sliderAltura,
                  min: 50,
                  max: 200,
                  onChanged: (double novaAltura) {
                    setState(() {
                      sliderAltura = novaAltura;
                    });
                  },
                  label: sliderAltura.round().toString(),
                  thumbColor: kPrimaryColor,
                  activeColor: kPrimaryColor,
                ),

                SizedBox(height: kDefaultPadding),

                // ----- Peso -----
                Text(
                  'Peso: ${sliderPeso.round()} kg',
                  style: TextStyle(
                    fontSize: 24,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  value: sliderPeso,
                  min: 10,
                  max: 200,
                  onChanged: (double novaAltura) {
                    setState(() {
                      sliderPeso = novaAltura;
                    });
                  },
                  label: sliderPeso.round().toString(),
                  thumbColor: kPrimaryColor,
                  activeColor: kPrimaryColor,
                ),
              ],
            ),
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
                    MaterialPageRoute(builder: (context) => Resultado()),
                  );
                },
                child: Text(
                  'Calcular o IMC',
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
