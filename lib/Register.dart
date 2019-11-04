import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'MainHome.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
          builder: (context) =>
          SlidingUpPanel(
              isDraggable: false,
              defaultPanelState: PanelState.CLOSED,
              minHeight: MediaQuery.of(context).size.height * .7,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              panel: Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Personal Details",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'First Name',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Last Name',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Phone',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Confirm Password',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text(
                        "Address Details",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Street Address',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'City',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'State',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              maxLines: 1,
                              decoration: new InputDecoration(
                                  labelText: 'Zip',
                                  labelStyle: new TextStyle(
                                      decorationStyle: TextDecorationStyle.solid)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      InkWell(
                          onTap: () {
                            print('Registration tapped');

                            final snackBar = SnackBar(
                              content: Text('Yay! A SnackBar!'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );

                            // Find the Scaffold in the widget tree and use
                            // it to show a SnackBar.
                            Scaffold.of(context).showSnackBar(snackBar);
//                          Navigator.push(context,
//                              MaterialPageRoute(builder: (context) {
//                                return MainHome();
//                              }));
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
                                      "Register",
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
                          ))
                    ],
                  ),
                ),
              ),
              body: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          gradient:
                              RadialGradient(colors: [Colors.white, Colors.red])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 40),
                      child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_left),
                          color: Colors.white,
                          tooltip: 'Go back',
                          iconSize: 40.0,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: const EdgeInsets.only(top: 55),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "REGISTER",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.assignment,
                                size: 45,
                                color: Colors.white.withOpacity(0.8),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
