// ignore_for_file: unused_import

import 'package:attendance_frontend/history_attendance.dart';
import 'package:attendance_frontend/splash_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      // home: HomePage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/signIn': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/historyAttendance':(context) => const HistoryPage()
      },
    );
  }
}
