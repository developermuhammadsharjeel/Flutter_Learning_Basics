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
    return
      Scaffold(
        //.....................................................................
        body: Center(
            child:
            Column(
              children: [
                //....................Text in Flutter
                Text("This is simple Text"),

                Text("Styled Text",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                  ),),

                Text("Styled Text 2",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'Times New Roman'

                  ),)
              ],
            )),


      );
  }
}

