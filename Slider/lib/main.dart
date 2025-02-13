import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  double _value1 = 0.0;

  void _setvalue(double value){
    setState(() {
      _value1 = value;
    });
  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                Text('value : ${(_value1*100).round()}'),
                Slider(value: _value1, onChanged:_setvalue),

              ],
            ),
          )
      ),
    );
  }
}