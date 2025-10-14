import 'package:flutter/material.dart';

/*
InkWell is a widget in Flutter that provides a rectangular area of a Material that responds to touch.
It's a great way to make non-button widgets, like Containers, Text, or Images, behave like buttons
by adding tap, double-tap, long-press gestures and a visual "ripple" effect to indicate user interaction.
It must have a Material widget as an ancestor.
*/

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
      body: Center(

        //...... We wrap a widget in InkWell widget to give it a button properties

        child: InkWell(
          onTap: (){
            print("Box Clicked");
          },
          borderRadius: BorderRadius.circular(15), // Match the container's border radius for ripple effect
          //........................................................................................
          //............Below is a Container and it's Decoration. you see how to make a container and give it to text from container.dart file




          //......................
            //........................


          child: Container(
            height: 200,
            width: 350,
            padding: const EdgeInsets.all(16.0), // Add some padding for the text
            alignment: Alignment.center, // Center the child text
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), // Rounded corners
              gradient: LinearGradient( // Use a gradient for a more modern look
                colors: [Colors.blue.shade300, Colors.purple.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),

            child: const Text("This box behaves like a button",
              textAlign: TextAlign.center, // Center text if it wraps
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
