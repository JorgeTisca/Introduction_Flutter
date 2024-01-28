import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripss_app/button_purple.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionDumy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  DescriptionPlace(this.namePlace, this.stars, {super.key});

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final starBorder = Container(
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final description = Container(
        child: Text(
      descriptionDumy,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff56575a)),
    ));

    final titleStarts = Row(
      children: <Widget>[
        Container(
          child: Text(
            namePlace,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Colors.blue,
                  letterSpacing: .5,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          children: <Widget>[star, star, star, starHalf, starBorder],
        ),
      ],
    );

    return Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            titleStarts,
            description,
            ButtonPurple("Navigate")
          ],
        ));
  }
}
