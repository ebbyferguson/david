import 'package:david/main.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.keyboard_arrow_left),
                        color: Colors.red,
                        tooltip: 'Go back',
                        iconSize: 40.0,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    /*IconButton(
                        icon: Icon(Icons.close),
                        color: Colors.black,
                        tooltip: 'Cancel',
                        iconSize: 25.0,
                        onPressed: () {
                      Navigator.pop(context);
                        }),*/
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    fontSize: 28.0,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Change your password for this account",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child:  Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                      child: Icon(Icons.lock_outline,size: 52,color: Colors.black45,)
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
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
                      labelText: 'Email',
                      hoverColor: Colors.red),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              InkWell(
                  onTap: () {
                    print('Reset tapped');
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MyApp();
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
                              "Reset",
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
    );
  }
}
