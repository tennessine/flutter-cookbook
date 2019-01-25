import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
        },
        child: Container(
          padding: EdgeInsets.all(12),
          child: Text('Flat Button'),
        ),
      ),
    );
  }
}
