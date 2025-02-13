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
  int _value1 = 0;
  int _value2 = 0;

  void _setvalue1(int? value){
    setState(() {
      _value1 = value!;

    });
  }

  void _setvalue2(int? value){
    setState(() {
      _value2 = value!;

    });
  }

  Widget makeRadios() {
    final List<Widget> list = [];

    for (int i = 0; i < 3; i++) {
      list.add(Radio(
        value: i,
        groupValue: _value1,
        onChanged: _setvalue1,
      ));
    }

    final Column column = Column(children: list);
    return column;
  }

  Widget makeRadiostiles() {
    final List<Widget> list = [];

    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setvalue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item:${i}'),
        subtitle: Text('Subtitle'),
      ));
    }

    final Column column = Column(children: list);
    return column;
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
                makeRadios(),
                makeRadiostiles()

              ],
            ),
          )
      ),
    );
  }
}