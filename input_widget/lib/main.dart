/* Text field implementation in Flutter*/
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

 void _onChange(String value) {
   setState(() {
     _value = 'change: ${value}';
   });
 }

 void _onSubmit(String value) {
   setState(() {
     _value = 'submit: ${value}';
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
            Text(_value),
            TextField(
              decoration: InputDecoration(
                labelText: 'Hello',
                hintText: 'Hint',
                icon: Icon(Icons.people)

              ),
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _onChange,
              onSubmitted: _onSubmit,
            )


          ],
        ),
      ),
    );
  }
}