import 'package:fireship_positioning/main.dart';
import 'package:fireship_positioning/square.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TogetherNow extends StatelessWidget {
  const TogetherNow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Part of the Video',
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text(
              "Welp, I might need to recap Flexbox before I go back to Angular..."),
        ),
        body: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(8),
          decoration: myContainerDecoration(),
          width: MediaQuery.of(context).size.width,
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize
                  .min, //This will only extend to content not to the end of the view port
              children: [
                Container(
                  decoration: myContainerDecoration(),
                  child: const Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
                const Text(
                  'Something About Hearts?',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Shall I compare thee to a summer's day? No! A summer's day is not a bit**.",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ElevatedButton(
                        onPressed: null, child: Text('PRESS ME')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyApp()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          // You can customize the background color for different states:
                          // For example, when the button is pressed:
                          // backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                          //   if (states.contains(MaterialState.pressed)) {
                          //     return Colors.red; // Change to red when pressed
                          //   }
                          //   return Colors.blue; // Default color
                          // }),
                        ),
                        child: const Text('PRESS ME')),
                    const ElevatedButton(
                        onPressed: null, child: Text('PRESS ME')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
