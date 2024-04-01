import 'package:flutter/material.dart';

import 'MainMahdity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(debugShowCheckedModeBanner: false,
      home : MainMahdity(),);
  }
}

