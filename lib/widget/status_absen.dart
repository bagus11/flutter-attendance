import 'package:flutter/material.dart';
import 'package:attendance_frontend/theme/theme.dart';

class StatusAbsent extends StatelessWidget {
  const StatusAbsent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 110,
      width: MediaQuery.of(context).size.width / 1,
      margin: const EdgeInsets.only(
        top: 15,
        right: 25,
        left: 25,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: greyColor,
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Mulai Kerja',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    '08:21',
                    style: googleTime.copyWith(
                      fontSize: 24,
                      color: blackColor,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Berhenti',
                    style: redTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    '17:36',
                    style: googleTime.copyWith(
                      fontSize: 24,
                      color: redColor,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sakit',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    '4',
                    style: googleCount.copyWith(
                      color: redColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Absen',
                    style: orangeTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    '2',
                    style: googleCount.copyWith(
                      color: orangeColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Izin',
                    style: navyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    '6',
                    style: googleCount.copyWith(
                      color: navyColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
