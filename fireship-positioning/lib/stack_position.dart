import 'package:fireship_positioning/main.dart';
import 'package:fireship_positioning/square.dart';
import 'package:flutter/material.dart';

class PositionedStackScreen extends StatelessWidget {
  const PositionedStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstrating Stacks 2',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text('Stacking Tings with the Positioned Widget'),
        ),
        body: Container(
          decoration: myContainerDecoration(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            const Square(),
            const Positioned(
              top: 20,
              left: 20,
              child: Square(
                color: Colors.amberAccent,
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                  child: const Square(
                    color: Colors.green,
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
