import 'dart:ui';

import 'package:flutter/material.dart';

Widget button(String text, Color color1, Color color2, TextStyle styles) {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    height: 50,
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        gradient: LinearGradient(colors: [
          color1,
          color2,
        ])),
    child: Text(
      '$text',
      style: styles,
    ),
  );
}

TextStyle textStyles(Color colors) {
  return TextStyle(fontWeight: FontWeight.w700, color: colors);
}

Widget socialWidget() {
  return Row(
    children: <Widget>[
      Container(
          margin: EdgeInsets.fromLTRB(25, 20, 5, 0),
          height: 50,
          alignment: Alignment.center,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(colors: [
                Color(0xffffffff),
                Color(0xffffffff),
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              ClipOval(
                child: Image(
                  image: AssetImage("assets/images/facebook.png"),
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 5,),
              Text(
                "facebook",
                style: textStyles(Color(0xff738bc2)),
              )
            ],
          )),
          Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          height: 50,
          alignment: Alignment.center,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(colors: [
                Color(0xffffffff),
                Color(0xffffffff),
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              ClipOval(
                child: Image(
                  image: AssetImage("assets/images/google.png"),
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 5,),
              Text(
                "Google",
                style: textStyles(Color(0xff81a9f7)),
              )
            ],
          ))
          
    ],
  );
}
