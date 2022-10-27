// ignore: unused_import
// ignore: unused_import
import 'package:attendance_frontend/theme/theme.dart';
import 'package:attendance_frontend/history_permission.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'history_attendance.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> widgets = [
    const Home(),
    const HistoryPage(),
    const PermissionPage(),
    // const Center(
    //   child: Text('Menu ke 3'),
    // ),
    const Center(
      child: Text('Menu ke 4'),
    ),
  ];

  @override
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
              tabBackgroundColor: const Color.fromARGB(255, 239, 239, 239),
              padding: const EdgeInsets.all(15),
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                const GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
                const GButton(
                  icon: Icons.history,
                  text: 'History',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
                const GButton(
                  icon: Icons.account_balance,
                  text: 'Permit',
                  textColor: Colors.lightBlueAccent,
                  iconActiveColor: Colors.lightBlueAccent,
                ),
                const GButton(
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
