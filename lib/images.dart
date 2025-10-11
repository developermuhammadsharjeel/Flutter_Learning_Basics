import 'package:flutter/material.dart';
import 'package:flutter_basics/reusable.dart';

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
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(Icons.insert_emoticon_sharp),
              Text(
                "Main Title",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Text(
                "Subtitle or Tagline",
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),


      body: Container(
          height: double.infinity,
          width: double.infinity,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"), // Path to your image
              fit: BoxFit.cover, // Cover the entire screen
            ),
          ),
          child: Spacer(),

        ),

    );
  }
}
