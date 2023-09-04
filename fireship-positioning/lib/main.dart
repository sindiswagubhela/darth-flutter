import 'package:fireship_positioning/row.dart';
import 'package:fireship_positioning/square.dart';
import 'package:flutter/material.dart';

import 'final.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PracticeHomePage(
          title: 'Flutter Widget Positioning - A Guide for the CSS Developer'),
    );
  }
}

class PracticeHomePage extends StatefulWidget {
  const PracticeHomePage({super.key, required this.title});
  final String title;
  @override
  State<PracticeHomePage> createState() => _PracticeHomePageState();
}

class _PracticeHomePageState extends State<PracticeHomePage> {
  @override
  Widget build(BuildContext context) {
    var container = Column(
      children: [
        Expanded(
          child: Container(
            alignment:
                Alignment.center, //Alignment depends on the parent container
            margin: const EdgeInsets.all(24),
            //padding: EdgeInsets.only(left: 10),
            decoration: myContainerDecoration(),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RowingScreen()));
                },
                child: const Square()),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TogetherNow()));
          },
          child: const ColoredBox(
            color: Colors.red,
            child: SizedBox(
              width: double.infinity,
              height: 30,
            ),
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: container,
    );
  }
}
