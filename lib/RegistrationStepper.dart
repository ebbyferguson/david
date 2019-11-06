import 'package:david/MainHome.dart';
import 'package:flutter/material.dart';

class RegistrationStepper extends StatefulWidget {
  @override
  _RegistrationStepperState createState() => _RegistrationStepperState();
}

class _RegistrationStepperState extends State<RegistrationStepper> {
  int _index = 0;
  bool personalDetailsActive = false;
  bool addressDetailsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stepper(
                type: StepperType.horizontal,
                steps: [
                  Step(
                    isActive: personalDetailsActive,
                    title: Text("Personal Details"),
                    content: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'First Name',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Last Name',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Email',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Phone',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Password',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Confirm Password',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Step(
                    isActive: addressDetailsActive,
                    title: Text("Address Details"),
                    content: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Street Address',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'City',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'State',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            autocorrect: false,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                labelText: 'Zip',
                                labelStyle: new TextStyle(
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                              onTap: () {
                                print('Registration tapped');
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MainHome();
                                }));
//                          _displaySnackBar(context, "This is a test");
                              },
                              child: Column(children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  margin: EdgeInsets.symmetric(vertical: 0),
                                  width: 255.0,
                                  height: 64.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        new BorderRadius.circular(50.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
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
                                )
                              ]))
                        ],
                      ),
                    ),
                  )
                ],
                currentStep: _index,
                onStepTapped: (index) {
                  setState(() {
                    _index = index;
                    if (index == 0) {
                      addressDetailsActive = false;
                      personalDetailsActive = true;
                    } else if (index == 1) {
                      addressDetailsActive = true;
                      personalDetailsActive = false;
                    }
                  });
                },
                controlsBuilder: (BuildContext context,
                        {onStepContinue, VoidCallback onStepCancel}) =>
                    Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
