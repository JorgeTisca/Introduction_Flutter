import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripss_app/rating.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;
  double rating;
  Review(this.pathImage, this.name, this.details, this.comment, this.rating,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final userInfo = Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 0),
            child: Expanded(
                child: Text(
              details,
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                  fontSize: 13, color: const Color(0xFFa3a5a7)),
            )),
          ),
          Rating(
            stars: rating,
          )
        ],
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 10),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 13,
        ),
      ),
    );
    final userComment = Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    ));

    final photo = Container(
      margin: const EdgeInsets.only(top: 10, left: 10),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Row(
      children: [photo, userDetails],
    );
  }
}
