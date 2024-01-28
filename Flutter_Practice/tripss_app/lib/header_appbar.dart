import 'package:flutter/material.dart';
import 'package:tripss_app/card_image_list.dart';
import 'package:tripss_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack("Welcome"), const CardImageList()],
    );
  }
}
