import 'package:flutter/material.dart';
import 'navigation.dart';

void main() => runApp(
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
              Colors.purple.shade700,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login ", style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                  Text("Welcome back", style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                ],
              ),
            ),

            Spacer(),   // This pushes the white container to the bottom

            Container(
              height: 680, // Adjust height as needed
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsetsGeometry.only(top: 60),
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 10,
                        offset: const Offset(0, 5),
                      ),]
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          //-------------- Comments-------------------------------------------------------------------
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Your Name",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),

                        const Divider(height: 1, color: Colors.grey),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Your Password",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ) ,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //-------------- Comments-----------------------------------------------------
                  const SizedBox(height: 15),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[500],
                        ),
                        child: Text("Forget Password ?")),
                  ),
                const SizedBox(height: 10),

                ElevatedButton(onPressed: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Mysecond(),

                      ),);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF7043),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text("Login",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),) ,),
                  const SizedBox(height: 30),
                  Center(
                    child: Text("Continue With Social Media",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 14
                            ),
                          ),
                          child: Text("FaceBook",)),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Mysecond(),));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30,
                        ),
                      ),
                          child: Text("Git HUb")),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){return Mysecond();},));
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 14,
                            ),
                          ),
                          child: Text("Linkedin")),
                    ],
                  ),
                  const SizedBox(height: 40),

                  Container(
                    height: 110,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors:[
                            Colors.blue.shade200,
                            Colors.blue.shade500,
                          ], ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(
                        color: Colors.black26.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: const Offset(0,5),
                      )],
                    ),
                    child: Center(
                      child: Text(" Sample", style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
    
  }
}

