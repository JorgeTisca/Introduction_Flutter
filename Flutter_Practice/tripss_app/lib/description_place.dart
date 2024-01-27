import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionDumy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." *
          2;

  DescriptionPlace(this.namePlace, this.stars, {super.key, required});

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final description = Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20),
        child: Text(
          descriptionDumy,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff56575a)),
        ));

    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
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

    return Column(
      children: <Widget>[titleStarts, description],
    );
  }
}
