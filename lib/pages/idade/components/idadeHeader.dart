import 'package:flutter/material.dart';
import 'package:imc/services/constants.dart';

class idadeHeader extends StatelessWidget {
  const idadeHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
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
              top: kDefaultPadding * 8, left: kDefaultPadding),
          child: Text(
            'Eu tenho...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}