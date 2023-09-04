import 'package:fireship_positioning/flex.dart';
import 'package:fireship_positioning/square.dart';
import 'package:flutter/material.dart';

class ColumbusScreen extends StatelessWidget {
  const ColumbusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstrating Column Tings',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text('Flying Nimbus not Cumulonimbus!'),
        ),
        body: Container(
          decoration: myContainerDecoration(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Square(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FelixScreen()));
                    },
                    child: const Square()),
              ]),
        ),
      ),
    );
  }
}
