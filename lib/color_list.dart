import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:testapp/random_color_widget.dart';

class ColorsList extends StatelessWidget {
  final List<Color> colors = Colors.accents;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildRow(colors[index], context);
        });
  }

  String _getColorName(Color color) {
    MyColor myColor = getColorNameFromColor(color);
    return myColor.getName;
  }

  Card _buildRow(Color color, BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_getColorName(color)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RandomColorWidget(color),
            ),
          );
        },
        leading: CircleAvatar(
          backgroundColor: color,
        ),
      ),
    );
  }
}
