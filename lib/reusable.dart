import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    title: "Nothing",
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              //.......................Reusable Text Field................................
              Tfield(
                text: "Text Filed",
                color: Colors.blue,
                radius: 12,
              ),

              Tfield(
                text: "hello",
                radius: 23,
              ),
              Tfield(text: "call me",color: Colors.greenAccent,),
              //...................... ///........................................

              //;'''''''''''''''''''''''\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
              const SizedBox(height: 15),

              MyText(text: "This is sample"),
              const SizedBox(height: 20,),

              MyText(text: "Sample",
                  color: Colors.purple),
              MyText(text: "App"),
              MyText(text: "Data", color: Colors.pink),

              //-----------------------Button
              Custombtn(
                text: "Login",
                color: Colors.blueAccent,
                onPressed: () {
                  print("Login clicked!");
                },
              ),


              const SizedBox(height: 20),

              Custombtn(
                text: "Register",
                color: Colors.green,
                textColor: Colors.white,
                fontSize: 20,
                borderRadius: 16,
                onPressed: () {
                  print("Register clicked!");
                },
              ),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(

                  ),
                  child: MyText(text: "Button"))



            ],
          ),
        ),
      ),
    );
  }
}

//-------------- Reusable Text ---------------------------------------------------------
class MyText extends StatelessWidget {
  final String text;
  final Color? color;

  const MyText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: color?? Colors.black,
        fontFamily: 'Times New Roman'
    ),);
  }
}

//-------------- Reusable Text ---------------------------------------------------------


//------------------------------ Reusable Button ------------------------------------

class Custombtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed; // ✅ Button action
  final Color? color;           // ✅ Optional custom background color
  final Color? textColor;       // ✅ Optional custom text color
  final double? fontSize;       // ✅ Optional font size
  final double? borderRadius;   // ✅ Optional border radius

  const Custombtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
    this.borderRadius,

  });


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue, // default color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        elevation: 3,
      ),
      child:  Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Times New Roman',
        ),
      ),
    );
  }
}


//----------------------
class MyContainer extends StatelessWidget {
  final String text;

  const MyContainer({
    super.key,
    required this.text,



  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//.............................................. Text Field..............................
class Tfield extends StatelessWidget {
  final Color? color;
  final String text;
  final double? radius;


  const Tfield({super.key,
    this.radius,
    this.color,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          color: color?? Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Times New Roman",
          fontSize: 23,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius?? 12),
        ),
      ),
    );
  }
}
