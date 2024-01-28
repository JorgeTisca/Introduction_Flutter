import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText;
  ButtonPurple(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Navigating..."),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20),
        height: 50,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                colors: [
                  Color(0xff4268d3),
                  Color.fromARGB(255, 145, 73, 240),
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
