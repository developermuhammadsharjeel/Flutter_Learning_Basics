import 'package:flutter/material.dart';
import 'loginform.dart';


class Mysecond extends StatelessWidget {
  const Mysecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Appbar"),),
      body: Container(
        alignment: Alignment.center,
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(
            color: Colors.black26.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0,5),
          )],
        ),
        child: ElevatedButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyApp(),));
        }, child: Text("Click me")),
      ),
    );
  }
}
