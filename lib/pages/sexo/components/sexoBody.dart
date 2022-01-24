// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:imc/pages/idade/idade.dart';
import 'package:imc/services/constants.dart';

class sexoBody extends StatefulWidget {
  const sexoBody({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<sexoBody> {
  late int _value = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // ---------- HOMEM ----------
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
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
                      onChanged: (int? value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                  ],
                ),

                SizedBox(width: kDefaultPadding * 4),

                // ---------- MULHER ----------
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female,
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
                      onChanged: (int? value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
        
            //Botão
            SizedBox(
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
          ],
        ),
      ),
    );
  }
}
