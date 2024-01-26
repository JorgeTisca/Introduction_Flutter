import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/sasuke.jpg";
  String name = "";
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place in Sri Lanka';
  Review(this.pathImage, this.name, this.details, this.comment, {super.key});
  @override
  Widget build(BuildContext context) {
    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 13, color: const Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 13,
        ),
      ),
    );
    final userComment = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Row(
      children: [photo, userComment],
    );
  }
}
