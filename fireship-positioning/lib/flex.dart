import 'package:fireship_positioning/square.dart';
import 'package:fireship_positioning/stack.dart';
import 'package:flutter/material.dart';

class FelixScreen extends StatelessWidget {
  const FelixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstrating the Flex Widget',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text('No Flex Zone'),
        ),
        body: Container(
            decoration: myContainerDecoration(),
            child: Column(
              children: [
                Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Square(),
                      const Expanded(
                          child: Square(
                        color: Colors.grey,
                      )),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FullStackScreen()));
                          },
                          child: const Square()),
                    ]),
                Container(
                  color: Colors.lightBlueAccent,
                  child: const SizedBox(
                    height: 100.0,
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Square(),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const FullStackScreen()));
                            },
                            child: const Square()),
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
