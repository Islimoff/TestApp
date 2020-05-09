import 'package:flutter/material.dart';
import 'package:testapp/random_color_widget.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Test App'),
        ),
        body: RandomColorWidget(),
      ),
    );
  }
}

