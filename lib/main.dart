import 'package:david/Store.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 42),
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      /*Text(
                                        'Skip',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 14.0,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),*/
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Sign In",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 28.0,
                                      color: Colors.red,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "To David's App",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                        color: Colors.red,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ))),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: TextField(
                            obscureText: false,
                            style: TextStyle(
                              fontSize: 16,),
                            decoration: InputDecoration(
                              focusColor: Colors.red,
                              fillColor: Colors.black,
                              border: UnderlineInputBorder(),
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            obscureText: false,
                            style: TextStyle(
                              fontSize: 16, ),
                            decoration: InputDecoration(
                                focusColor: Colors.red,
                                fillColor: Colors.black,
                                border: UnderlineInputBorder(),
                                focusedBorder: new UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.red),
                                ),
                                labelText: 'Password',
                                hoverColor: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                            color: Colors.black45,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        InkWell(
                          child: Text(
                            " Sign Up",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          onTap: () {
                            print("value of your text");
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Store();
                            }));
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: InkWell(
                        onTap: () {
                          print('Login tapped');
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Store();
                          }));
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              margin: EdgeInsets.symmetric(vertical: 0),
                              width: 295.0,
                              height: 64.0,
                              decoration: new BoxDecoration(
                                color: Colors.red,
                                borderRadius: new BorderRadius.circular(50.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Let's go in",
                                    style: new TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.end,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
