import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage;
  CardImage(this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250,
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

    return card;
  }
}
