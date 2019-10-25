import 'package:flutter/material.dart';
import 'components/CustomShapeClipper.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.redAccent.withOpacity(0.9)])),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Account",
                          style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Spacer(),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
              Positioned.fill(top: 100,child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    elevation: 10.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.account_circle,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Account",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.shopping_cart,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Shopping Cart",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.local_offer,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "My Orders",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.shopping_basket,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Pick Up Orders",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.pageview,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "View Our Weekly Ad",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.library_books,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Terms and Conditions",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.vpn_lock,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,indent: 5,),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.power_settings_new,size: 22,color: Colors.black45,)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Sign Out",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      )),
    );
  }
}

