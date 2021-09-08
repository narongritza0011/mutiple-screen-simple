import 'package:flutter/material.dart';
import 'package:mutiple_screen_android/new_screen.dart';
import 'package:mutiple_screen_android/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      initialRoute: "/",
      routes: {
        "/newScreen": (context) => NewScreen(),
        Product.routeName: (context) => Product(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  String firstname = 'narongrit';
  String lastname = 'kumpakping';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.of(context).pushNamed(Product.routeName, arguments: {
            "title": "Hello world"
          }).then((value) => {
                if (value != null) {print(value)}
              });
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text('หน้าหลัก'),
      ),
      body: Container(
        child: Center(
          child: Text('สวัสดี ชื่อ $firstname $lastname'),
        ),
      ),
    );
  }
}
