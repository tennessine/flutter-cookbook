import 'package:flutter/material.dart';

abstract class ListItem {}

class HeadingItem extends ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem extends ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

final items = List<ListItem>.generate(
  1200,
  (i) => i % 6 == 0
      ? HeadingItem('Heading $i')
      : MessageItem('Sender $i', 'Message body $i'),
);

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is MessageItem) {
              return ListTile(
                title: Text(item.sender),
                subtitle: Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}
