import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        //by default it is in left
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Hello world', style: TextStyle(fontSize: 23.0),
          textDirection: TextDirection.ltr,
        ),
      ),
    ),
  ));
}
