import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/theme.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Container(
                child: Card(
                  child: SizedBox(
                      width: MediaQuery.of(context).size.height / 1,
                      height: 100,
                      child: Row(
                        children: [
                          Card(
                            color: Color(0xff5FD068),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.height / 8,
                              height: 90,
                              child: Center(
                                child: Text('07:00', style: googleFontTime),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date : Mon, 22 August 2022',
                                    style: googleFont,
                                  ),
                                  Text(
                                    'Status : Absent Sign in',
                                    style: googleFont,
                                  ),
                                  Text(
                                    'Description :Save',
                                    style: googleFont,
                                  )
                                ],
                              )),
                        ],
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                  child: Card(
                child: SizedBox(
                    width: MediaQuery.of(context).size.height / 1,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date : Mon, 22 August 2022',
                                  style: googleFont),
                              Text('Status : Absent Sign Out',
                                  style: googleFont),
                              Text('Description :Absent ', style: googleFont),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  child: Card(
                                    color: Color(0xffEB1D36),
                                    child: SizedBox(
                                      width:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      height: 90,
                                      child: Center(
                                        child: Text('17:25',
                                            style: googleFontTime),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                        )
                      ],
                    )),
              )),
            )
          ],
        ),
      ),
    );
  }
}
