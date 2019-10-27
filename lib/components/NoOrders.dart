import 'package:david/Home.dart';
import 'package:david/Store.dart';
import 'package:david/components/StoreItem.dart';
import 'package:david/main.dart';
import 'package:flutter/material.dart';

class NoOrders extends StatelessWidget {
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
                  "No Orders",
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
                  "Tap the button below to place a new order",
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
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.remove_shopping_cart,
                    size: 52,
                    color: Colors.black45,
                  )),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 65,
              ),
              InkWell(
                  onTap: () {
                    print('Add Order tapped');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
                              "Add Orders",
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
                              Icons.add_shopping_cart,
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
