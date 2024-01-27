import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.stars,
  });
  final double stars;

  Widget getStar(double stars) {
    var icon = Icons.star;
    stars == 0.5 ? icon = Icons.star_half : icon;
    stars < 0.5 ? icon = Icons.star_border : icon;

    return Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: Icon(
        icon,
        color: const Color(0xFFff9100),
        size: 16,
      ),
    );
  }

  Widget getRating(double stars) {
    final list = List<Widget>.generate(5, (index) => getStar(stars - index));
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: Row(
        children: list,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getRating(stars);
  }
}
