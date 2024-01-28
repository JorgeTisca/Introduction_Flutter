import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  @override
  Widget build(BuildContext context) {
    final actionButton = FloatingActionButton(
      backgroundColor: Colors.purple,
      mini: true,
      tooltip: 'Fav',
      child: const Icon(Icons.favorite_border),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Like!!!"),
        ));
      },
    );

    return actionButton;
  }
}
