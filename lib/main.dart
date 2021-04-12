import 'package:dogecoin_fun/ui/home.dart';
import 'package:flutter/material.dart';
import 'ui/fun.dart';
import 'ui/about.dart';
import 'ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dogecoin Fun',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Padding(
          padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
          child: MyStateHome(),
        )),
      ),
    );
  }
}

class MyStateHome extends StatefulWidget {
  const MyStateHome({Key key}) : super(key: key);

  @override
  _MyStateHome createState() => _MyStateHome();
}

class _MyStateHome extends State<MyStateHome> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Fun(),
    About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.child_care),
              label: "Fun",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.alternate_email),
              label: "About",
              backgroundColor: Colors.black),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
