import 'package:flutter/material.dart';
import 'PizzaPage2.dart'; // optional, keep only if you actually use it

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page3(),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    const Color primaryColor = Colors.pinkAccent;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, size: 40),
        ),
        title: const Text('Responsive Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.3,   // 70% of total screen width
              height: screenHeight * 0.1, // 30% of total screen height
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  '70% width\n30% height',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.teal,
              height: screenHeight * 0.2,
              width: screenWidth * 0.3,

              child: FractionallySizedBox(
              heightFactor: 0.5,
                widthFactor: 0.5,
                alignment: Alignment.center,

                child: Container(
                  color: Colors.greenAccent,
                )
              )),

            const SizedBox(height: 20),

            Container(
              height: screenHeight * 0.3,
              width: screenWidth * 0.3,
              color: Colors.greenAccent.shade400,
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 0.5,
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.black,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
