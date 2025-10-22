import 'package:flutter/material.dart';
import 'package:flutter_basics/MadProject/main.dart';

void main()=>runApp(
  MaterialApp(
  debugShowCheckedModeBanner: false,
    home: Page2(),
  )
);

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late final screenWidth = MediaQuery.of(context).size.width;
  late final screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Center(
          child: Text("Menu Page", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "Times New Roman",
            color: Colors.black,
          ),),
        ),
        actions: [
          ElevatedButton(onPressed: (){}
              , child: Icon(Icons.add_shopping_cart_rounded)),
        ],
      ),
      body: Center(
    child: Container(
    width: screenWidth * 0.7,   // 70% of screen width
      height: screenHeight * 0.3, // 30% of screen height
      color: Colors.blue,
      child: Center(
        child: Text(
          '70% width, 30% height',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),),
    ),),
    );
  }
}



Widget box(){
  return Container(
    height: 200,
    width: 350,
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 100,100,04),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          spreadRadius: 15,
          color: Color.fromRGBO(0, 0,0,0.3),
          blurRadius: 10,
          offset: Offset(0,5),
        ),
      ]
 ),
  );
}


//
// Column(
// children: [
// const SizedBox(height: 50,),
// Container(
// width: double.infinity,
// height: 760,
//
// decoration: BoxDecoration(
// color: Color.fromRGBO(102, 255, 255, 0.4),
// ),
// child: Stack(
// alignment: Alignment.topCenter,
//
// children: [
// Positioned(
// top: 0,
// child: box(),
// ),
// // 200 * 0.6 = 120. Overlap is 40%, so next box starts at 60% of the previous box's height.
// !_showcart
// ? Positioned(
// top: 120,
// child: Container(
// height: _Cheight,
// width: _width,
// decoration: BoxDecoration(
// color: _Containercolor,
// borderRadius: BorderRadius.circular(20),
// boxShadow: [
// BoxShadow(
// spreadRadius: 10,
// color: Colors.black.withOpacity(0.3),
// blurRadius: 10,
// offset: Offset(0, 5),
// )
// ]),
// ),
// )
//     : const SizedBox.shrink(),
//
// Positioned(
// top: 240.0,
// child: box(),
// ),
// Positioned(
// top: 360.0,
// child: box(),
// ),
// Positioned(
// top: 480.0,
// child: InkWell(
// onTap: (){
// Future.delayed(const Duration(seconds: 1), () {
// setState(() {
// if(_Containercolor == Colors.deepOrange.shade400){
// _Containercolor = Colors.blue.shade400;
// _width = 300;
// _Cheight= 200;
// }
// else{
// _Containercolor = Colors.deepOrange.shade400;
// _Cheight = 100;
// _width= 150;
// }
// });
// });
// },
// child: Container(
// height: _Cheight,
// width: _width,
// decoration: BoxDecoration(
// color: _Containercolor,
// borderRadius: BorderRadius.circular(15),
// ),
// ))),
//
// Positioned(
// right: 30,
// top: 650,
// child: InkWell(
// onTap: () {
// setState(() {
// _showChatBox = !_showChatBox;
// });
// },
// child: Icon(Icons.chat, size: 50,),
// )),
// if (_showChatBox)
// Positioned(
// right: 100,
// bottom: 80, // Positioned above the icon
// child: Container(
// padding: const EdgeInsets.all(12.0),
// height: 100,
// width: 250,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(15),
// boxShadow: [
// BoxShadow(
// color: Colors.black.withOpacity(0.2),
// spreadRadius: 2,
// blurRadius: 5)
// ],
// ),
// child: Text("Hello! How can I help you today?"),
// ),
// ),
//
// ] ),
// ),
// ],
// )
// );