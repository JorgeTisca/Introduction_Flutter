import 'package:flutter/material.dart';
import 'package:tripss_app/customAppBar.dart';
import 'package:tripss_app/details_list.dart';

// void main() {
//   runApp(DesignerScreen());
// }

class DesignerScreen extends StatelessWidget {
  const DesignerScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            body: Column(
          children: <Widget>[
            ClipPath(clipper: MyClipper(), child: const CustomAppBar()),
            const DetailsCardList()
          ],
        )));
  }
}
