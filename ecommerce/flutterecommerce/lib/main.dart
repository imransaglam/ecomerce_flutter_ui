import 'package:flutter/material.dart';
import 'package:flutterecommerce/homescreen.dart';
import 'package:flutterecommerce/navbar.dart';

void main() {
  runApp(const MyApp());
}
// sdlkgjfghkldfjglkdjfklg
// dşskgjdfkghfkldsf
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

