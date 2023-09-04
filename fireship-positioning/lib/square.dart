import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Square extends StatelessWidget {
  final Color color;
  final double size;

  const Square({super.key, this.color = Colors.black, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: const Icon(
        FontAwesomeIcons.fire,
        color: Colors.purpleAccent,
      ),
    );
  }
}

BoxDecoration myContainerDecoration() {
  return BoxDecoration(
    color: Colors.pink,
    border: Border.all(width: 2.0, color: Colors.purple),
  );
}
