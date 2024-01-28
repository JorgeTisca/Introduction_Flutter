// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tripss_app/floating_action_button.dart';

class CardImage extends StatelessWidget {
  String pathImage;
  CardImage(this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      //height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.only(top: 80, left: 20),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [card, const FloatingActionButtonGreen()],
    );
  }
}
