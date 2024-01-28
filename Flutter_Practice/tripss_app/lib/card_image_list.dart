import 'package:flutter/material.dart';
import 'package:tripss_app/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .50,
      child: ListView(
        padding: const EdgeInsetsDirectional.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/images/cascate.jpg'),
          CardImage('assets/images/mountain.jpg'),
          CardImage('assets/images/rocks.jpg'),
          CardImage('assets/images/sabana.jpg'),
          CardImage('assets/images/tree.jpg'),
        ],
      ),
    );
  }
}
