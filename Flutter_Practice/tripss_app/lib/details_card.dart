import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  String name = "Uncharted";
  String pathImage = "assets/img/uncharted.jpg";
  String platform = "PS3/PS4";

  DetailsCard(this.name, this.platform, this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final gamePhoto = Container(
      margin: const EdgeInsets.only(right: 20.0),
      height: 40.0,
      width: 40.0,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/img/control.png"))),
    ); // gamePhoto Container

    final platformName = Container(
      child: Text("Plataforma: $platform",
          style: const TextStyle(
            color: Colors.cyan,
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
          )),
    ); // platformName

    final videoGameName = Container(
      child: Text(name,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w900)),
    ); // videoGameName Container

    final videoGamePhoto = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 10.0),
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    ); // videoGamePhoto Container

    final dataGame = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[videoGameName, platformName],
    ); //dataName Column

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[videoGamePhoto, Expanded(child: dataGame), gamePhoto],
    );
  }
}
