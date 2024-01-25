import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenge 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.home),
        title: const Text('Platzi'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          _backgroubd(),
          _centralText(),
        ],
      ),
    );
  }

  Widget _backgroubd() {
    return const Image(
      image: AssetImage('assets/image/background.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _centralText() {
    return Center(
      child: Container(
        height: 100,
        color: const Color.fromRGBO(0, 0, 0, 0.5),
        child: const Center(
          child: Text('ROCKSATAR',
              style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),
    );
  }
}
