import 'package:attendance_frontend/widget/history.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:attendance_frontend/theme/theme.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: whiteColor2,
        centerTitle: true,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: blueColor,
          ),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.pushNamed(context, '/home'),
        ),
        title: Text(
          'Riwayat Absensi',
          style: blueTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18.0,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: SafeArea(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const HistoryAttendance(),
            const HistoryAttendance(),
            const HistoryAttendance(),
            const HistoryAttendance(),
          ],
        ),
      ),
    );
  }
}
