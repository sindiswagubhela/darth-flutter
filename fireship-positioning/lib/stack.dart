import 'package:fireship_positioning/square.dart';
import 'package:fireship_positioning/stack_position.dart';
import 'package:flutter/material.dart';

class FullStackScreen extends StatelessWidget {
  const FullStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstrating Stacks',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text('Stacking Tings'),
        ),
        body: Container(
          decoration: myContainerDecoration(),
          child: Stack(children: [
            const Square(),
            const Align(
              alignment: Alignment.topCenter,
              child: Square(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PositionedStackScreen()));
                  },
                  child: const Square()),
            ),
          ]),
        ),
      ),
    );
  }
}
