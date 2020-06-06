import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uix/design/widgetdesign.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xfffc3b5b)
        ));
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:8.0,top:5.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffefefef),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                    child: Image(
                  image: AssetImage("assets/images/3.png"),
                  fit: BoxFit.cover,
                )),
                Padding(
                  padding: const EdgeInsets.only(top:130.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Color(0xffefefef),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(35))),
                    child: Column(
                      children: <Widget>[
                        Form(
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(15.0)),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30.0),
                                child: Column(
                                  children: <Widget>[
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "Full Name",
                                            style: textStyles(Color(0xffc4c4c4)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 55,
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xffebebeb),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: TextFormField(
                                            style: textStyles(Color(0xff9c9ca4)),
                                            keyboardType:
                                                TextInputType.text,
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Rexford Asamoah",
                                                fillColor: Color(0xffebebeb),
                                                border: InputBorder.none))),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "Email Address",
                                            style: textStyles(Color(0xffc4c4c4)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 55,
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xffebebeb),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: TextFormField(
                                            style: textStyles(Color(0xff9c9ca4)),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                                hintText:
                                                    "rexfordasamoah51@gmail.com",
                                                fillColor: Color(0xffebebeb),
                                                border: InputBorder.none))),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "Password",
                                            style: textStyles(Color(0xffc4c4c4)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                        height: 55,
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xffebebeb),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: TextFormField(
                                            style: textStyles(Color(0xff9c9ca4)),
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            obscureText: obscure,
                                            decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                  icon: obscure == false
                                                      ? Icon(Icons.remove_red_eye,
                                                          color:
                                                              Color(0xfffb176e))
                                                      : Icon(Icons.visibility_off,
                                                          color:
                                                              Color(0xfffb176e)),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (obscure == true) {
                                                        obscure= false;
                                                      } else {
                                                    obscure= true;
                                                      }
                                                    });
                                                  },
                                                ),
                                                hintText: "**********",
                                                fillColor: Color(0xffebebeb),
                                                border: InputBorder.none))),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "Forget Password?",
                                            style: textStyles(Color(0xffc4c4c4)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: button(
                                      "Sign up",
                                      Color(0xfffd544e),
                                      Color(0xfffc2a64),
                                      textStyles(Colors.white))),
                              SizedBox(height: 20),
                              Container(
                                  child: Text("Or",
                                      style: textStyles(Color(0xfffb176e)))),
                              socialWidget(),
                              SizedBox(height: 15),
                              Container(
                                  child: Text.rich(TextSpan(
                                      text: "Already have an account?",
                                      style: textStyles(Color(0xff717171)),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text: " Sign In",
                                        style: textStyles(Color(0xfff77ba0)))
                                  ])))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ]),
        )));
  }
}
