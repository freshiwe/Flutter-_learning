import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text('Please login'),
            Row(
              children: <Widget>[
                Text('Username'),
                Expanded(
                  child: TextField(
                    controller: _user,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Password'),
                Expanded(
                  child: TextField(
                    controller: _pass,
                    obscureText: true,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {
                  print('Login ${_user.text}');
                },
                child: Text('Click me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
