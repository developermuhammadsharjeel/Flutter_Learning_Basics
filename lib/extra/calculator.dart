import 'package:flutter/material.dart';
import 'package:flutter_basics/MadProject/main.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black,Colors.grey.shade300 ], // Example gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),


        child: Scaffold(
          backgroundColor: Colors.transparent, // Make Scaffold background transparent
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make AppBar background transparent to show gradient
        elevation: 0.0, // Adds shadow to the AppBar currently 0
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/logo.png')),
        ),

        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
          ),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...',
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            ),
          ),
        ),


        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add_shopping_cart,
              color: Colors.white, // Change icon color to white
            ),
            onPressed: () {
              // Add to cart logic here
            },
          ),
        ],
      ),


      //................................Body .................................
      body: Column(
        children: [
          Container(),
        ],
      ),
    ),
      ),
    );
  }
}
