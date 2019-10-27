import 'package:carousel_pro/carousel_pro.dart';
import 'package:david/Home.dart';
import 'package:david/Store.dart';
import 'package:david/components/brand_item.dart';
import 'package:david/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:david/components/StoreItem.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 4,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.only(left: 0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.dashboard),
                                color: Colors.red.withOpacity(0.3),
                                iconSize: 20.0,
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            Text(
                              "Featured Brands",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: Colors.red,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 300.0,
                      width: MediaQuery.of(context).size.width,
                      child: Carousel(
                        images: [
                          NetworkImage(
                              'https://img.freepik.com/free-vector/professional-website-banner-with-red-shapes_1361-1532.jpg?size=626&ext=jpg'),
                          NetworkImage(
                              'https://img.freepik.com/free-vector/modern-website-banner-with-wave_1361-1533.jpg?size=626&ext=jpg'),
                          NetworkImage(
                              'https://seminarphilippines.com/wp-content/uploads/2018/02/SF2018-Event-Banner-RLP-1024x576.jpg'),
                          NetworkImage(
                              'https://i.pinimg.com/736x/c6/1e/f8/c61ef8d98478382a1b78d9f482e9d9de.jpg'),
                        ],
                        dotSize: 5.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.redAccent,
                        indicatorBgPadding: 10.0,
                        dotBgColor: Colors.black.withOpacity(0.5),
                        borderRadius: false,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  color: Colors.transparent,
                  elevation: 4,
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "View All Brands",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  elevation: 4,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Store();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "View All Products",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.dashboard),
                    color: Colors.grey.withOpacity(0.3),
                    iconSize: 20.0,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Text(
                  "Popular Brands",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
        SizedBox(height: 15),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
//                itemCount: brandsArray.length,
                itemBuilder: (BuildContext context, int index) {
//                  Map brand = furnitures[index];

                  return Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: (){
                        /*Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context){
                              return Details();
                            },
                          ),
                        );*/
                      },
                      child: Container(
                        height: 140,
                        width: 230,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "images/resetpassword.png",
                            height: 140,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
