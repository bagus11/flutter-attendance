import 'package:attendance_frontend/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ExpansionPermissionCardWidget extends StatefulWidget {
  String? title;
  String? subtitle;
  // ignore: prefer_typing_uninitialized_variables
  var color;

  ExpansionPermissionCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.color,
  }) : super(key: key);
  // const ExpansionPermissionCardWidget(
  //     {super.key, required this.title, required this.subtitle});

  @override
  State<ExpansionPermissionCardWidget> createState() =>
      _ExpansionPermissionCardWidgetState();
}

class _ExpansionPermissionCardWidgetState
    extends State<ExpansionPermissionCardWidget> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
        right: 20,
        left: 20,
        // bottom: 5,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: greyColor,
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: ExpansionTileCard(
        baseColor: whiteColor,
        title: Text(
          widget.title!,
          style: GoogleFonts.poppins().copyWith(
            fontSize: 20,
            fontWeight: semiBold,
            color: widget.color,
          ),
        ),
        subtitle: Text(
          // 'Data dalam 1 bulan terakhir',
          widget.subtitle!,
          style: GoogleFonts.poppins().copyWith(
            fontSize: 12,
            fontWeight: light,
            color: greyColor,
          ),
        ),
        children: [
          Divider(
            thickness: 0.5,
            color: greyColor,
            height: 0.5,
          ),
          // ignore: prefer_const_constructors
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
