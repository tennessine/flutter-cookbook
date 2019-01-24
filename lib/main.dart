import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (!value.contains('@')) {
                  return '(including the underline and the space reserved for the label), set the decoration to null explicitly.';
                }
              },
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: '邮箱',
                labelStyle: TextStyle(
                  color: Colors.red,
                ),
                helperText: '请输入邮箱',
                helperStyle: TextStyle(
                  color: Colors.grey,
                ),
                hintText: '提示',
                hintStyle: TextStyle(
                  color: Colors.blue,
                ),
                errorText: '邮箱错误',
                errorStyle: TextStyle(
                  color: Colors.brown,
                ),
                errorMaxLines: 2,
                hasFloatingPlaceholder: true,
//                contentPadding: EdgeInsets.symmetric(vertical: 10),
                prefixIcon: Icon(Icons.ac_unit),
//                prefix: Text('prefix'),
                suffixIcon: Icon(Icons.airplanemode_active),
                counterText: 'hello',
                filled: true,
                fillColor: Color(0xffe8efff),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: '密码',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
