import 'package:flutter/material.dart';


void main()=>runApp(
  MaterialApp(
    home: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            //........... There are three main type of buttons in flutter
            // 1. ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton pressed');
              },
              child: const Text('Elevated Button'),
            ),
            // 2. TextButton
            TextButton(
              onPressed: () {
                print('TextButton pressed');
              },
              child: const Text('Text Button'),
            ),
            // 3. OutlinedButton
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton pressed');
              },
              child: const Text('Outlined Button'),
            ),
          ],
        ),

      ),
    );
  }
}
