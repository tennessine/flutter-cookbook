import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
          ),
          child: Image.network(
            'http://localhost/gif.gif',
            width: 100,
            height: 100,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
