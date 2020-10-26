import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  double value = 0.0;
  void setValue(double values) => setState(() => value = values);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Value : ${(value * 100).round()}"),
              new Slider(value: value, onChanged: setValue)
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}