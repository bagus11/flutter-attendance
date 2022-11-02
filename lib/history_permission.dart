import 'package:flutter/material.dart';
import 'package:attendance_frontend/theme/theme.dart';
import 'package:attendance_frontend/widget/expansion_permission_card.dart';
// ignore: unused_import
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

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
      backgroundColor: whiteColor2,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // const PermissionWidget(),
                ExpansionPermissionCardWidget(
                  title: 'Sakit',
                  subtitle: 'Data dalam 1 bulan terakhir',
                  color: redColor,
                ),
                ExpansionPermissionCardWidget(
                  title: 'Absen',
                  subtitle: 'Data dalam 1 bulan terakhir',
                  color: orangeColor,
                ),
                ExpansionPermissionCardWidget(
                  title: 'Izin',
                  subtitle: 'Data dalam 1 bulan terakhir',
                  color: navyColor,
                ),
              ],
            ),
          ),
        ),
      ),
      // for floating expandable

      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: key,
        // duration: const Duration(seconds: 1),
        distance: 65.0,
        type: ExpandableFabType.up,
        // fanAngle: 70,
        // child: const Icon(Icons.account_box),
        // foregroundColor: Colors.amber,
        backgroundColor: blueColor,
        closeButtonStyle: ExpandableFabCloseButtonStyle(
          child: const Icon(Icons.close),
          // foregroundColor: Colors.deepOrangeAccent,
          backgroundColor: navyColor,
        ),
        overlayStyle: ExpandableFabOverlayStyle(
          // color: Colors.black.withOpacity(0.5),
          blur: 5,
        ),
        onOpen: () {
          debugPrint('onOpen');
        },
        afterOpen: () {
          debugPrint('afterOpen');
        },
        onClose: () {
          debugPrint('onClose');
        },
        afterClose: () {
          debugPrint('afterClose');
        },
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          FloatingActionButton.extended(
            onPressed: null,
            heroTag: null,
            icon: const Icon(Icons.edit),
            label: const Text('Izin'),
            backgroundColor: redColor,
          ),
          FloatingActionButton.extended(
            onPressed: null,
            heroTag: null,
            icon: const Icon(Icons.edit),
            label: const Text('Cuti'),
            backgroundColor: orangeColor,
          ),
          // const FloatingActionButton.extended(
          //   heroTag: null,
          //   label: Text('Permit'),
          //   icon: Icon(Icons.share),
          //   onPressed: null,
          // ),
        ],
      ),
    );
  }
}
