import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uix/design/widgetdesign.dart';
import 'package:uix/screens/signIn.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xfffc3b5b)
        ));
    return Scaffold(
      backgroundColor: Color(0xffffffff) ,
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Welcome Back",style: TextStyle(
                 color: Color(0xfffd534e),
                 fontSize: 30,
                 fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    child: Image(
                  image: AssetImage("assets/images/1.png"),
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 40,
                ),
                   InkWell(
                     onTap: (){},
                     child: button("Sign up", Color(0xfffd544e), Color(0xfffc2a64),textStyles(Colors.white))),
                
              
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                  },
                                  child: button(
                    "Log In",
                    Color(0xffebebeb),
                    Color(0xffebebeb),
                    textStyles(Colors.black)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
