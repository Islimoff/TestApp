import 'package:flutter/material.dart';
import 'package:testapp/TestList.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My test App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: TestList(),
    );
  }

}
