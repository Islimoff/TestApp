import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorWidget extends StatefulWidget {
  @override
  _RandomColorWidgetState createState() => new _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {
  Color _color;

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        setState(() {
          _color = _randomGenerator();
        });
      },
      child: Container(
        child: Text('Hey there!'),
        color: _color,
        alignment: Alignment.center,
      ),
    );
  }

  Color _randomGenerator() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
