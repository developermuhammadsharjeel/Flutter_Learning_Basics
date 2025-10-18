import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.blueGrey,
            Colors.grey,
          ])
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          leading: const Padding(padding: EdgeInsets.all(12),
            child: Image(image: AssetImage('assets/logo.png')),
           ),
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.manage_search_rounded),
                border: InputBorder.none,
                hintText: "Search Services .....",
                hintStyle: TextStyle(
                  fontFamily: 'Times New Roman',
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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

        body: Padding(
          padding: const EdgeInsets.all(15),
          // This is a special box-like widget called a Container.
          child: Container(
            // 'width: double.infinity' tells the box to be as wide as the screen.
            width: double.infinity,
            // 'decoration' is like dressing up the box.
            decoration: BoxDecoration(
              // 'gradient' makes a smooth blend of colors.
              gradient: LinearGradient(
              // 'begin: Alignment.topCenter' means the color blend starts at the top middle.
              begin: Alignment.topCenter,
              // 'end: Alignment.bottomCenter' means the color blend ends at the bottom middle.
              end: Alignment.bottomCenter,
              // 'colors' lists the colors we want to blend.
              colors: [
                // The first color in our blend is blue.
                Colors.blue,
                // The second color is purple. So it will go from blue at the top to purple at the bottom.
                Colors.purple,
              ]) ,
              // 'borderRadius' gives the box soft, rounded corners instead of sharp ones.
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
