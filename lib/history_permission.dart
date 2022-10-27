import 'package:attendance_frontend/widget/expansion_permission_card.dart';
// ignore: unused_import
import 'package:attendance_frontend/widget/permission.dart';
import 'package:flutter/material.dart';
import 'package:attendance_frontend/theme/theme.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: whiteColor,
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
          'Riwayat Perizinan',
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // const PermissionWidget(),
                ExpansionPermissionCardWidget(
                  title: 'Sick',
                  subtitle: 'Data dalam 1 bulan terakhir',
                  color: redColor,
                ),
                ExpansionPermissionCardWidget(
                  title: 'Absent',
                  subtitle: 'Data dalam 1 bulan terakhir',
                  color: orangeColor,
                ),
                ExpansionPermissionCardWidget(
                  title: 'Permit',
                  subtitle: 'Data dalam 1 bulan terakhir',
                  color: navyColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
