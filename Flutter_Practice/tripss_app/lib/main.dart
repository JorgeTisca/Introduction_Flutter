import 'package:flutter/material.dart';
import 'package:tripss_app/description_place.dart';
import 'package:tripss_app/review.dart';

void main() {
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
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.purple,
            title: const Text(
              "Hello World",
            ),
            actions: const [],
          ),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [DescriptionPlace("Texas", 4, "good"), Review()],
              ))),
    );
  }
}
