import 'package:david/Account.dart';
import 'package:david/Home.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return StoreState();
  }
}

class StoreState extends State<Store> {
  int _selectedPage = 0;
  final _pageOptions = [
    Home(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'David',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("David's App"),
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('Account'))
          ],
        ),
      ),
    );
  }
}
