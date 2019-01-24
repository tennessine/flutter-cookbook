import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: CachedNetworkImage(
              placeholder: CircularProgressIndicator(),
              imageUrl:
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1548350092752&di=318276df1192020f031cf8fb57761d7b&imgtype=0&src=http%3A%2F%2Fimg.ph.126.net%2FRCC5BQWsRB4nQsvtZA5rDg%3D%3D%2F649081296311594384.jpg'),
        ),
      ),
    );
  }
}
