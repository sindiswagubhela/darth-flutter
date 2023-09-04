import 'package:fireship_positioning/col.dart';
import 'package:fireship_positioning/square.dart';
import 'package:flutter/material.dart';

class RowingScreen extends StatelessWidget {
  const RowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstrating Row Tings',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text('Row, Row, Row Your Boat'),
        ),
        body: Container(
          decoration: myContainerDecoration(),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Square(),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ColumbusScreen()));
                },
                child: const Square()),
          ]),
        ),
      ),
    );
  }
}
