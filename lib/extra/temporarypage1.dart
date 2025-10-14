import 'package:flutter/material.dart';
import 'package:flutter_basics/reusable_widget.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [BoxShadow(
          blurRadius: 3,
          spreadRadius: 3,
          color: Colors.black,
        ),
        ],
        ),
      ),
    );
  }
}
