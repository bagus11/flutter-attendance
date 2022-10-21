import 'package:flutter/material.dart';
import 'package:attendance_frontend/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  // 'Bagus Slamet Oetomo',
                  'Irvan Muhammad Sindy',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // const SizedBox(
                //   height: 6,
                // ),
                Text(
                  'ICT - Programmer',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: blueColor,
              radius: 30,
              child: Icon(
                Icons.person,
                size: 35,
                color: whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
