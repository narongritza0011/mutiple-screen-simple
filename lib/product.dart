import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  static const String routeName = "/cart";

  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final value =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    print(value["title"]);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context).pop({"title": "hello"});
        },
        child: Icon(Icons.arrow_back),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Center(
          child: Text('$value'),
        ),
      ),
    );
  }
}
