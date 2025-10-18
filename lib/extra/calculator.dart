import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner:false,
    home:MyApp(),
  ),
);

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState()=> _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Container(
        height: double.infinity,
        width:double.infinity,

        decoration: BoxDecoration(
          gradient:const LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.green]
          ),
        ),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Numbers and operators",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}

class CalButton extends StatefulWidget{


  const CalButton({super.key});
@override
  State <CalButton> createState()=> _CalButtonState();
}

class _CalButtonState extends State<CalButton>{

  @override
Widget build(BuildContext context){
    return   Scaffold();
  }
}