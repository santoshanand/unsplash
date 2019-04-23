import 'package:flutter/material.dart';
import 'package:unsplash/src/pages/home/home.dart';
import 'package:unsplash/src/pages/login/login.dart';
import 'package:unsplash/src/pages/search/search.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Login(),
      home: Search(),
    );
  }
}
