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

  String _value = '';
  void _onclick (String value){
    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      persistentFooterButtons: <Widget>[
        IconButton(
          onPressed: () {
            _onclick('Button 1');
          },
          icon: Icon(Icons.timer),  // Corrected line
        ),
        IconButton(
          onPressed: () {
            _onclick('Button 2');
          },
          icon: Icon(Icons.people),  // Corrected line
        ),
        IconButton(
          onPressed: () {
            _onclick('Button 3');
          },
          icon: Icon(Icons.map),  // Corrected line
        ),
      ],



      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Text('Hello drawer'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              )


            ],
          ),
        ),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(_value)
          ],
        ),
      ),
    );
  }
}