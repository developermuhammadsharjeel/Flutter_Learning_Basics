import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'PizzaPage2.dart';
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
  late final screenWidth = MediaQuery.of(context).size.width;
  late final screenHeight = MediaQuery.of(context).size.height;


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_business, size: 30,),

        title: Center(
          child: Text("Pizachiooo!", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
            fontSize: 30,
          ),),
        ),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search, size: 30, color: Colors.red,),
          )
        ],
      ),

      body: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: screenWidth * 1,
            height: screenHeight * 1,

            decoration: BoxDecoration(
              color: Color.fromRGBO(155, 158, 153,0.8),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 14,
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
                          child: Image(image: AssetImage('assets/dealhead.png'),
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
                          Myicon(Icons.local_pizza_outlined),
                          Myicon(Icons.lunch_dining_outlined),
                          Myicon(Icons.fastfood_outlined),
                          Myicon(Icons.local_bar_outlined),
                          Myicon(Icons.cake_outlined),
                          Myicon(Icons.ramen_dining),
                          Myicon(Icons.kebab_dining),
                          Myicon(Icons.icecream_outlined),
                          Myicon(Icons.local_cafe_outlined),
                          Myicon(Icons.bakery_dining_outlined),
                          Myicon(Icons.tapas_outlined),
                        ],
                      ),
                    ),
                  ),
                ),),
                
                //..............................................
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 540,
                      width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(203, 203, 203, 0.9),
                      borderRadius:  BorderRadius.circular(25),
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Deals",style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize:  30,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(15),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Image(image: AssetImage('assets/dealbanner1.JPG'),fit: BoxFit.fill,),
                              ),
                            ),
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            ProductBox(
                              imagePath: 'assets/deals1.JPG', // Make sure you have this image in your assets
                              description: 'A Pizza with Macaroni',
                              price: 'Price \$12.99',
                              onAddToCart: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()),);
                              },
                            ),
                              ProductBox(
                                imagePath: 'assets/deals2.JPG', // Make sure you have this image in your assets
                                description: 'A Pizza with Macaroni',
                                price: 'Price \$12.99',
                                onAddToCart: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()),);
                                },
                              ),
                    ]
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Myicon(IconData name) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Icon(name),
  );
}
//..................................


//..............Reusable Widget for products

class ProductBox extends StatefulWidget {

  final String imagePath;
  final String description;
  final String price;
  final VoidCallback? onAddToCart;

  const ProductBox({
    super.key,
    required this.imagePath,
    required this.description,
    required this.price,
    this.onAddToCart,
  });

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280, // Adjusted height to fit content
      width: 150,  // Adjusted width to fit content
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              widget.imagePath,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.description, style: TextStyle(fontSize: 14)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(widget.price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              onPressed: widget.onAddToCart ?? () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Add To Cart",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


