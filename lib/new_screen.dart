import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  String product = 'อาหารเเมว';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context).pop({"title": "hello"});
        },
        child: Text('back'),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          'New Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text('test'),
      ),
    );
  }
}
