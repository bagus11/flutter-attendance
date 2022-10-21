import 'package:flutter/material.dart';
import 'package:attendance_frontend/theme/theme.dart';

class AbsentSchedule extends StatelessWidget {
  const AbsentSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 6,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(
              width: 50,
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
          ],
        ),
      ),
    );
  }
}
