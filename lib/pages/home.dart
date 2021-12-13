import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Calculadora IMC"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --------- ALTURA ---------
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Altura",
                border: UnderlineInputBorder(),
              ),
            ),
          ),

          // --------- PESO ---------
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Peso",
                border: UnderlineInputBorder(),
              ),
            ),
          ),

          // --------- BOTAO ---------

          Center(
            child: TextButton(
              child: Text("Calcular"),
              onPressed: () {},
            ),
          ),

          // -------- RESULTADO ---------

          Center(
            child: Text("RESULTADO IMC"),
          ),
        ],
      ),
    );
  }
}
