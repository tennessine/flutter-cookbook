import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
//              child: FadeInImage.memoryNetwork(
//                placeholder: kTransparentImage,
//                image: 'http://localhost/gif.gif',
//              ),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                image: 'http://localhost/gif.gif',
              ),
            )
          ],
        ),
      ),
    );
  }
}
