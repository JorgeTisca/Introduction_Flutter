import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tripss_app/rating.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage = "assets/image/sasuke.jpg";
  String name = "Roberto";
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place in Sri Lanka';

  Review({super.key});

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
          const Rating(
              stars: 3.5,
              marginLeft: 5,
              fontSize: 16,
              marginRight: 5,
              marginTop: 0)
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
