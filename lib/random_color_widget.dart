import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorWidget extends StatefulWidget {
  final Color _color;

  RandomColorWidget(this._color);

  @override
  _RandomColorWidgetState createState() => new _RandomColorWidgetState(_color);
}

class _RandomColorWidgetState extends State<RandomColorWidget> {
  Color _color;

  _RandomColorWidgetState(this._color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Test App')),
      body: InkWell(
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
      ),
    );
  }

  Color _randomGenerator() {
    print((Random().nextDouble() * 0xFFFFFF).toInt());
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
