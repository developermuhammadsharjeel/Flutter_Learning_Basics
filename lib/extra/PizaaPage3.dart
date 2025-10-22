import 'package:flutter/material.dart';

void main() {
  runApp(const Page3());
}


class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveContainerExample(),
    );
  }
}

class ResponsiveContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Color PrimaryColor = Colors.pinkAccent;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Container Example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          width: screenWidth * 1,   // 70% of total screen width
          height: screenHeight * 1, // 30% of total screen height
          decoration: BoxDecoration(
            color: PrimaryColor,
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
      ),
    );
  }
}
