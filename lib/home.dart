import 'package:attendance_frontend/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Container(
            decoration: BoxDecoration(
                color: blueColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: blueColor,
                                radius: 30,
                                child: Icon(
                                  Icons.person,
                                  size: 35,
                                  color: whiteColor,
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // 'Bagus Slamet Oetomo',
                                'Irvan Muhammad Sindy',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                'ICT - Programmer',
                                style: GoogleFonts.poppins(color: Colors.white),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height / 1,
                    height: 110,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Sick',
                                  style: redTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '4',
                                  style: googleCount.copyWith(
                                    color: redColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Absent',
                                  style: orangeTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '2',
                                  style: googleCount.copyWith(
                                    color: orangeColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                  top: 20,
                                ),
                                child: Text(
                                  'Permit',
                                  style: navyTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '6',
                                  style: googleCount.copyWith(
                                    color: navyColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '08:00',
                            style: googleTime.copyWith(
                              color: navyColor,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'Jam Masuk',
                            style: navyTextStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '17:00',
                            style: googleTime.copyWith(
                              color: redColor,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'Jam Pulang',
                            style: redTextStyle,
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 30,
              right: 20,
              left: 20,
            ),
            child: Text(
              'History in 3 day',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          // history
          const HistoryAttendance(),
          const HistoryAttendance(),
        ],
      ),
    ));
  }
}
