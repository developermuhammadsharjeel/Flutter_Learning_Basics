import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginform2.dart';

class Mysecond extends StatefulWidget {
  @override
  _MysecondState createState() => _MysecondState();
}

class _MysecondState extends State<Mysecond> {
  String username = '';

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? '';
    });
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: logout,
            tooltip: 'Logout',
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $username!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: logout,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text('Logout', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox( height: 20),
            Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(colors: [
                  Colors.blue,
                  Colors.green,
                ]),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4)),
                ],
              ),
              child: Center(
                child: Text("This is an Empty Box", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,

                ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}