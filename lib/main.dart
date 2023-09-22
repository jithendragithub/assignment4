import 'package:assignment4/business.dart';
import 'package:assignment4/school.dart';
import 'package:assignment4/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppp(),
    );
  }
}

class MyAppp extends StatefulWidget {
  @override
  State<MyAppp> createState() => _MyApppState();
}

class _MyApppState extends State<MyAppp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedIndex: currentIndex,
          backgroundColor: Colors.cyan,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.school_outlined),
              label: 'School',
              selectedIcon: Icon(Icons.school),
            ),
            NavigationDestination(
              icon: Icon(Icons.business_outlined),
              label: 'Business',
              selectedIcon: Icon(Icons.business),
            ),
          ],
        ),
        body: <Widget>[
          firstclass(),
          secondclass(),
          thirdclass(),
        ][currentIndex]);
  }
}
