import 'package:flutter/material.dart';

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

      //.............. We use Container Widgets to make a box/ Container

      body: Column(
        children: [

          //................... Simple Container
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text('Text'),
          ),

          // Advance container with styling
          Container(
            height: 200,
            width: 300,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                )
              ]),


            //.... These are text and it's styling
            child:  Text("Styled Text 2",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Times New Roman',
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                  wordSpacing: 5.0,
                  shadows: [
                    Shadow(color: Colors.black.withOpacity(0.5), offset: Offset(2,2), blurRadius: 4)
                  ]
              ),),
          ),
        ],
      ),
    );
  }
}
