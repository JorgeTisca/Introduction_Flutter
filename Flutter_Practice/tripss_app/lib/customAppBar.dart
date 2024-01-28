// ignore: file_names
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final iconAppBar = Container(
        height: 90,
        padding: const EdgeInsets.only(top: 43, left: 20.0),
        child: const InkWell(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: <Widget>[Icon(Icons.menu, color: Colors.white)],
          ),
        )); // iconAppBar Container

    final titleBar = Container(
      margin: const EdgeInsets.only(top: 40.0),
      alignment: Alignment.center,
      child: const Text(
        "Video Games",
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ); // titleBar Container

    var imageBar = Container(
      height: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/img/joystick.jpg"))),
    );

    return Stack(
      children: <Widget>[
        imageBar,
        iconAppBar,
        titleBar,
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 40.0);

    var firstControlPoint = Offset(size.width / 6, size.height - 50);

    var firstEndPoint = Offset(size.width / 3, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * 0.51, size.height);

    var secondEndPoint = Offset(size.width * (4 / 6), size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width * (5 / 6), size.height - 60);

    var thirdEndPoint = Offset(size.width, size.height - 40.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, size.height - 40.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
