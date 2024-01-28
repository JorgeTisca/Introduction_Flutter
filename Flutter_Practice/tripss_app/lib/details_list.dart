import 'package:flutter/material.dart';
import 'package:tripss_app/details_card.dart';

class DetailsCardList extends StatelessWidget {
  const DetailsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DetailsCard("Uncharted: Drake's Treasure", "PS3/PS4",
            "assets/img/uncharted_drakes_fortune.jpg"),
        DetailsCard("Gears of War 4", "Xbox One/PC", "assets/img/gow4.jpg"),
        DetailsCard(
            "Super Mario Oddysey", "Nintendo Switch", "assets/img/odyssey.jpg"),
        DetailsCard("God of War", "PS4", "assets/img/boy.jpg"),
        DetailsCard("Cuphead", "Xbox One/PC/\nNintendo Switch/macOS/Tesla",
            "assets/img/cuphead.jpg"),
      ],
    );
  }
}
