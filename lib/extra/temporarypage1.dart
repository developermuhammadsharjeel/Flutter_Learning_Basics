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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [BoxShadow(
                spreadRadius: 3,
                blurRadius: 15,
                color: Colors.black,
                offset: Offset(0.3, 0.4),
              )
              ],
            ),
            child: Text("Sample Data", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),),
          ),
        ],
      ),
    );
  }
}
