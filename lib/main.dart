import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc/pages/home.dart';
import 'package:imc/services/constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kBackgroundColor,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
