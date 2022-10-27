import 'dart:async';
import 'dart:io';
import 'package:attendance_frontend/theme/theme.dart';
import 'package:attendance_frontend/widget/header.dart';
import 'package:attendance_frontend/widget/jadwal_absen.dart';
import 'package:attendance_frontend/widget/status_absen.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
// ignore: unused_import
import 'history_attendance.dart';
import 'package:attendance_frontend/widget/history.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: unused_field
  File? _imageFile;
  final _picker = ImagePicker();

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Absensi 3 hari terakhir',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, '/historyAttendance'),
                    child: Row(
                      children: [
                        Text(
                          'Lihat semua',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: blackColor,
                        ),
                      ],
                    ),
                  )
                ],
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
          onPressed: () async => _pickImageFromCamera(),

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

  // function take photo
  Future<void> _pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      // ignore: unnecessary_this
      setState(
        () => _imageFile = File(pickedFile.path),
      );
      GallerySaver.saveImage(pickedFile.path);
    }
  }
}
