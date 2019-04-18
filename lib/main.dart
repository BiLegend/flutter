import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'Flutter Demo';

    final _children = <Widget>[];
    var i = 0;
    for ( i = 0; i < colors.length; i++) {
      _children.add(new _colorWidget(colors[i]));
    }

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _children,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

Widget _touch( Color _color) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    height: 200.0,
  );
}

class _colorWidget extends StatelessWidget {
  Color _color;

  _colorWidget([this._color]);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(10.0),
        width: 160.0,
        child: RaisedButton(
          color: _color,
          onPressed: () => _touch(_color),
        ));
  }
}
