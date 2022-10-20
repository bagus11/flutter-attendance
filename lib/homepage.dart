import 'package:attendance_frontend/theme/asset.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  List<Widget> widgets = [
    Home(),
    HistoryPage(),
    Center(
      child: Text('Menu ke 3'),
    ),
    Center(
      child: Text('Menu ke 4'),
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
              gap: 20,
              onTabChange: (int i) {
                setState(() {
                  currentIndex = i;
                });
              },
              backgroundColor: Colors.white,
              color: Colors.grey,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 239, 239, 239),
              padding: EdgeInsets.all(15),
              tabs: [
                // ignore: prefer_const_constructors
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
                GButton(
                  icon: Icons.history,
                  text: 'History',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
                GButton(
                  icon: Icons.account_balance,
                  text: 'Permit',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'My Profile',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
              ]),
        ),
      ),
    );
  }
}
