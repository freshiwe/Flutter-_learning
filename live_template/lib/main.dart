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

  String _value  = "Hello world";
  /*
  void _onPressed(){
    setState(() {
      _value = "My name is Muadh";
    });
  }
  */
   
  void _onPressed(){
    setState(() {
      _value = new DateTime.now().toString();
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
        child: new Column(
          children: <Widget>[
            new Text(_value),
            /*
            new ElevatedButton(
              onPressed: _onPressed,
              child: Text('Click me'),
            )
            */
            new ElevatedButton(onPressed: _onPressed, child:Text('Click me')),
            new TextButton(
              onPressed: _onPressed,
              child: Text('Click me'),
            )


          ],
        ),
      ),
    );
  }
}