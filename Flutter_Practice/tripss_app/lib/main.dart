import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripss_app/description_place.dart';
import 'package:tripss_app/gradient_back.dart';
import 'package:tripss_app/review_list.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tripss App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                DescriptionPlace(
                  "Texas",
                  4,
                ),
                const ReviewList()
              ],
            ),
          ),
          GradientBack("Popular")
        ],
      )),
    );
  }
}
