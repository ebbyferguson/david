import 'package:david/components/StoreItem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Flexible(
                child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: storeItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Stack(
                    alignment: FractionalOffset.topLeft,
                    children: <Widget>[
                      Stack(
                        alignment: FractionalOffset.bottomCenter,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(storeItems[index].image),
                                    fit: BoxFit.fitWidth)),
                          ),
                          Container(
                            color: Colors.white.withAlpha(100),
                            height: 55.0,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "${storeItems[index].name.substring(0, 10)}...",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "\$${storeItems[index].price}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.red),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                      Container(
                        height: 35.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5.0)),
                            color: Colors.black.withAlpha(40)),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Text(
                              'ADD TO CART',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            padding: EdgeInsets.all(5),)
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
