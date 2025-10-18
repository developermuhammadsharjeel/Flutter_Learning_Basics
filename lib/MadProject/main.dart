import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart'; // Import the math_expressions package

/// The main entry point for the Flutter application.
void main() {
  runApp(MyApp());

}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Calculator(),
    );
  }
}

/// A stateful widget that represents the calculator screen.
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

/// The state for the [Calculator] widget.
class _CalculatorState extends State<Calculator> {
  /// Variable to hold the current input text.
  String input = '';

  /// Updates the input field with the text from the pressed button.
  void buttonPressed(String text) {
    setState(() {
      input += text; // Concatenate text to the current input
    });
  }

  /// Evaluates the input expression using the math_expressions package.
  void evaluateExpression() {
    try {
      // Parse the expression and evaluate it
      Parser p = Parser();
      Expression exp = p.parse(input);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      setState(() {
        input = eval.toString(); // Display the result
      });
    } catch (e) {
      setState(() {
        input = 'Error'; // Show error if the input is invalid
      });
    }
  }

  /// Clears the input field.
  void clearInput() {
    setState(() {
      input = ''; // Clear the input field
    });
  }

  /// Removes the last character from the input.
  void backspace() {
    setState(() {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Column(
        children: [
          // Display the current input
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                input,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Row for number buttons
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcButton('7'),
                    calcButton('8'),
                    calcButton('9'),
                    calcButton('/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcButton('4'),
                    calcButton('5'),
                    calcButton('6'),
                    calcButton('*'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcButton('1'),
                    calcButton('2'),
                    calcButton('3'),
                    calcButton('-'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcButton('C', onPressed: clearInput),
                    calcButton('0'),
                    calcButton('=', onPressed: evaluateExpression),
                    calcButton('+'),
                  ],
                ),
                // Backspace button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    calcButton('<-', onPressed: backspace),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// A custom widget that creates a calculator button.
  ///
  /// The [label] is the text displayed on the button.
  /// The [onPressed] callback is executed when the button is pressed.
  /// If [onPressed] is not provided, the [buttonPressed] method is called with the [label].



  Widget calcButton(String label, {VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed ?? () => buttonPressed(label),
      child: Text(label, style: TextStyle(fontSize: 30)),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        shape: CircleBorder(),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
