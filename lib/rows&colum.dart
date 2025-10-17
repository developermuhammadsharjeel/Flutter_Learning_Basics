import 'package:flutter/material.dart';

void main() => runApp(
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
      //.....................................................................................................................................................
//.........SingleChildScrollView used when our content goes beyond screen space
      body: SingleChildScrollView(
        // This adds some space around the content, like a margin.
        padding: const EdgeInsets.all(16.0),

        // The Column widget arranges things from top to bottom.
        child: Column(
          // This makes everything inside the Column start from the left side.
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'This is a Column:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // A Column arranges its children vertically.
            Column(
              children: [
                Container(color: Colors.red, height: 50, width: 100),
                Container(color: Colors.green, height: 50, width: 100),
                Container(color: Colors.blue, height: 50, width: 100),
              ],
            ),
            const SizedBox(height: 30),
            const Text('This is a Row:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            // A Row arranges its children horizontally.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.orange, height: 50, width: 50),
                Container(color: Colors.purple, height: 50, width: 50),
                Container(color: Colors.teal, height: 50, width: 50),
              ],
            ),
          ],
        ),
      ),
      //.....................................................................................................................................................
    );
  }
}
