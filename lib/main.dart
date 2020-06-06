import 'package:flutter/material.dart';
import 'package:uix/screens/splash.dart';

void main(){
  runApp(
   MaterialApp(
    title: "Musically",
    debugShowCheckedModeBanner: false,
    theme: ThemeData( 
      primaryColor:Color(0xfffc3b5b),
      accentColor: Color(0xffefefef),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Home(),
   )
  );
}