import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_basics/MadProject/main.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),
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
      appBar: AppBar(
        leading: Icon(Icons.add_business),
        title: Text("Sample"),
        actions: [
          Icon(Icons.search)
        ],
      ),

      body: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            height: double.infinity,

            decoration: BoxDecoration(
              color: Color.fromRGBO(155, 158, 153, 0.3),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            
            //............................................Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image(image: AssetImage('assets/car.JPEG'), 
                          fit: BoxFit.cover,)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(12),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(203, 203, 203, 0.7),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),
                          Icon(Icons.add_business),

                        ],
                      ),
                    ),
                  ),
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


