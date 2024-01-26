import 'package:flutter/material.dart';
import 'package:tripss_app/description_place.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(118, 11, 165, 62)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(
            "Hello World",
          ),
          actions: const [],
        ),
        body: DescriptionPlace("Texas", 4, "good"),
      ),
    );
  }
}
