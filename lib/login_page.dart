import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Hello Again !',
            style: GoogleFonts.poppins(
              fontSize: 52,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Welcome back, you\'ve been missed !',
            style: GoogleFonts.poppins(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // Email
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(25))),
                ),
              )),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(25))),
                ),
              )),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      )),
    );
  }
}