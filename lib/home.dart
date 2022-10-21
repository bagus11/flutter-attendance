import 'package:attendance_frontend/theme/theme.dart';
import 'package:attendance_frontend/widget/header.dart';
import 'package:attendance_frontend/widget/jadwal_absen.dart';
import 'package:attendance_frontend/widget/status_absen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'history.dart';
import 'package:attendance_frontend/widget/history.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // header
            const Header(),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                right: 20,
                left: 20,
              ),
              child: Text(
                'Status absensi',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            // status absent
            const StatusAbsent(),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                right: 20,
                left: 20,
              ),
              child: Text(
                'Jadwal absen',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            // default in and out
            const AbsentSchedule(),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                right: 20,
                left: 20,
              ),
              child: Text(
                'Riwayat absensi 3 hari terakhir',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            // history
            const HistoryAttendance(),
            const HistoryAttendance(),
            const HistoryAttendance(),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 65.0,
        width: 65.0,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },

          tooltip: 'Absen',
          backgroundColor: blueColor,
          elevation: 20,
          // icon: const Icon(Icons.camera_alt_outlined),
          child: const Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
        ),
      ),
    );
  }
}
