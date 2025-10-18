import 'package:flutter/material.dart';
import 'dart:ui'; // Import dart:ui to use ImageFilter

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
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              // Use ClipRRect to ensure the blur effect respects the border radius.
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                // BackdropFilter applies a filter (in this case, blur) to the area behind its child.
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Adjust sigma values for more/less blur
                  child: Container(
                    // The container inside the filter has a semi-transparent color
                    // to allow the blurred background to be visible.
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25), // A subtle white tint
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            product(),
                            product(),
                            product(),

                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            product(),
                            product(),
                            product(),

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.2), // Blue with 50% opacity (0.5)
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                image: AssetImage("assets/car.JPEG"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.2), // Blue with 50% opacity (0.5)
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                image: AssetImage("assets/car.JPEG"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget product(){
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/logo.png')),
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.purple,
            ])
        ),
      ),
    ),
  );
}
