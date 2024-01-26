import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.stars,
    required this.marginLeft,
    required this.fontSize,
    required this.marginRight,
    required this.marginTop,
  }) : super(key: key);
  final double stars;
  final double marginLeft;
  final double marginRight;
  final double fontSize;
  final double marginTop;

  Widget getStar(double stars) {
    var icon = Icons.star;
    stars == 0.5 ? icon = Icons.star_half : icon;
    stars < 0.5 ? icon = Icons.star_border : icon;

    return Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: Icon(
        icon,
        color: const Color(0xFFff9100),
        size: fontSize,
      ),
    );
  }

  Widget getRating(double stars) {
    final list = List<Widget>.generate(5, (index) => getStar(stars - index));
    return Container(
      margin:
          EdgeInsets.only(left: marginLeft, right: marginRight, top: marginTop),
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
