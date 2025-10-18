// This line imports the main Flutter library, which gives us all the building blocks (called widgets) to create our app's user interface.
import 'package:flutter/material.dart';

// This is the main starting point of our app. It's like the "on" switch.
// The `runApp` function tells Flutter which widget is the root of our entire application.
void main()=>runApp(
  // MaterialApp is a core widget that sets up the basic structure and design rules for our app, following Google's Material Design guidelines.
  MaterialApp(
    // This line removes the little "Debug" banner that usually appears in the top-right corner of the screen.
    debugShowCheckedModeBanner: false,
    // `home` defines the first screen the user will see. We're setting it to our `MyApp` widget.
    home: MyApp(),
  )
);

// This is our main app widget. In Flutter, almost everything is a widget, from a simple button to the entire screen.
// `StatelessWidget` means this widget's appearance doesn't change based on user interaction or internal data. It's static.
class MyApp extends StatelessWidget {
  // This is a constructor. It's a special function that gets called when we create a new `MyApp` widget.
  // The `super.key` part is just some standard code to help Flutter identify and manage widgets efficiently.
  const MyApp({super.key});

  // The `build` method is where the magic happens. It describes what this widget looks like on the screen.
  // Flutter calls this method whenever it needs to draw the widget.
  @override
  Widget build(BuildContext context) {
    // `Scaffold` is a basic layout structure for a Material Design screen. It provides slots for things like an app bar, a body, etc.
    // We are using two Scaffolds here. The outer one is to set a background for the whole screen.
    return Scaffold(
      // The `body` of the outer Scaffold holds a `Container`.
      body: Container(
        // `decoration` is used to style the container, like adding colors, borders, or gradients.
        decoration: BoxDecoration(
          // We're giving the container a `LinearGradient`, which is a smooth transition between two or more colors.
          gradient: LinearGradient(
              // The gradient starts at the top center of the screen.
              begin: Alignment.topCenter,
              // And it ends at the bottom center.
              end: Alignment.bottomCenter,
              // These are the colors for our gradient, going from blue-grey to grey.
              colors: [
            Colors.blueGrey,
            Colors.grey,
          ])
        ),
      // We're putting another Scaffold inside our container. This is a bit unusual but used here to layer our UI.
      child: Scaffold(
        // By making the background color `transparent`, we can see the gradient from the outer container behind it.
        backgroundColor: Colors.transparent,
        // `appBar` is the top bar of the screen, which usually contains a title and some action buttons.
        appBar: AppBar(
          // We also make the app bar's background transparent to keep our gradient visible.
          backgroundColor: Colors.transparent,

          // The `leading` widget is the item on the far left of the app bar, often a menu icon or a back button.
          leading: const Padding(padding: EdgeInsets.all(12),
            // Here, we're displaying an image from our project's 'assets' folder.
            child: Image(image: AssetImage('assets/logo.png')),
           ),
          // The `title` is the main content of the app bar, usually text, but here it's a search bar.
          title: Container(
            // We fix the height of our search bar container.
            height: 40,
            // Let's style the search bar container.
            decoration: BoxDecoration(
              // A light grey background color.
              color: Colors.grey.shade400,
              // This makes the corners of the container rounded.
              borderRadius: BorderRadius.circular(20),
            ),
            // `TextField` is a widget that lets the user type text.
            child: TextField(
              // `decoration` for the TextField helps us style the input area itself.
              decoration: InputDecoration(
                // `prefixIcon` places an icon at the beginning of the text field.
                prefixIcon: Icon(Icons.manage_search_rounded),
                // `InputBorder.none` removes the default underline from the text field.
                border: InputBorder.none,
                // `hintText` is the placeholder text shown when the field is empty.
                hintText: "Search Services .....",
                // `hintStyle` allows us to change the font, size, and color of the hint text.
                hintStyle: TextStyle(
                  fontFamily: 'Times New Roman',
                ),
                // `contentPadding` adds some space inside the text field, around the text itself.
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              ),
            ),
          ),
          // `actions` are the widgets (usually buttons) on the far right of the app bar.
          actions: <Widget>[
            // `IconButton` is a button with an icon.
            IconButton(
              icon: const Icon(
                Icons.add_shopping_cart, // The shopping cart icon.
                color: Colors.white, // We've set the icon's color to white.
              ),
              // `onPressed` is a function that runs when the button is tapped. It's empty for now.
              onPressed: () {
                // We would put the code to handle adding items to a cart here.
              },
            ),
          ],
        ),

        // The `body` is the main content area of the screen, below the app bar.
        body: Padding(
          // We add some padding (empty space) around our main content.
          padding: const EdgeInsets.all(15),
          // A `Container` is like a box that we can style and position.
          child: Container(
            // `double.infinity` tells the container to be as wide as the screen allows.
            width: double.infinity,
            // We are styling this container too.
            decoration: BoxDecoration(
              // Another `LinearGradient` for this container's background.
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // This gradient goes from blue to purple.
              colors: [
                Colors.blue,
                Colors.purple,
              ]) ,
              // We make its corners rounded to match the search bar's style.
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      ),
    );
  }
}

