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
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.purple,
              ]) ,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
