import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBack extends StatelessWidget {
  GradientBack(this.title, {super.key});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff4268d3),
                Color.fromARGB(255, 145, 73, 240),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: GoogleFonts.lato(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
