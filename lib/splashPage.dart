// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'theme/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 6),
      () => Navigator.pushNamed(context, '/home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 180,
              width: 180,
              margin: const EdgeInsets.only(
                bottom: 34,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    // 'assets/images/calender.png',
                    // 'assets/images/distance.png',
                    'assets/images/way.gif',
                  ),
                ),
              ),
            ),
            Text(
              'My Attendance',
              style: blueTextStyle.copyWith(
                fontSize: 34,
                fontWeight: extraBold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
