import 'package:flutter/material.dart';
import 'Login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TabahiHub",
      home: Scaffold(
        appBar: AppBar(
          title: Text("TabahiHub"),
        ),
        body: LoginPage(),
      ),
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.green,
        brightness: Brightness.light,
      ),
    );
  }
}
