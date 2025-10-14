import 'package:flutter/material.dart';


void main()=>runApp(
  MaterialApp(
    home: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            //........... There are three main type of buttons in flutter
            // 1. ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton pressed');
              },
              child: const Text('Elevated Button'),
            ),

            // 2. TextButton
            TextButton(
              onPressed: () {
                print('TextButton pressed');
              },
              child: const Text('Text Button'),
            ),

            // 3. OutlinedButton
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton pressed');
              },
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 50),
            //......................... Fully Styled Buttons
            //..............,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
            //............................
            //.....................


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 1. ElevatedButton with extensive styling
                ElevatedButton(
                  onPressed: () {},
                  // Style property allows for detailed customization.
                  style: ElevatedButton.styleFrom(
                    // foregroundColor: Sets the color of the button's content (text, icons).
                    foregroundColor: Colors.white,
                    // backgroundColor: Sets the background color of the button itself.
                    backgroundColor: Colors.deepPurple,
                    // disabledForegroundColor/disabledBackgroundColor: Colors for the button when it is disabled (onPressed is null).
                    disabledForegroundColor: Colors.grey.withOpacity(0.38),
                    disabledBackgroundColor: Colors.grey.withOpacity(0.12),
                    // shadowColor: Defines the color of the button's elevation shadow.
                    shadowColor: Colors.purpleAccent,
                    // elevation: The z-coordinate at which to place this button relative to its parent.
                    elevation: 10,
                    // textStyle: Customizes the text within the button.
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                    // padding: The padding between the button's boundary and its child.
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    // minimumSize/maximumSize: Constraints for the button's size.
                    minimumSize: const Size(100, 40),
                    // shape: Defines the button's shape and border.
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: Defines the properties of the button's border.
                      side: const BorderSide(color: Colors.purpleAccent),
                    ),
                    // alignment: Aligns the button's child.
                    alignment: Alignment.center,
                  ),
                  child: const Text('Styled'),
                ),

                // 2. TextButton with extensive styling
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    // foregroundColor: Color for the text and icons.
                    foregroundColor: Colors.teal,
                    // backgroundColor: The button's background color (usually transparent for TextButton).
                    backgroundColor: Colors.teal.shade50,
                    // shape: Defines the button's shape.
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    // textStyle: For customizing the font, size, etc.
                    textStyle: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                    // side: Defines the border of the button.
                    side: const BorderSide(color: Colors.teal, width: 2),
                  ),
                  child: const Text('Styled'),
                ),

                // 3. OutlinedButton with extensive styling
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    // foregroundColor: Color of the button's child (text, icon).
                    foregroundColor: Colors.orange,
                    // side: Defines the properties of the button's outline.
                    side: const BorderSide(color: Colors.orange, width: 3),
                    // shape: Defines the shape of the button's outline.
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Styled'),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
