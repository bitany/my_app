import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the LoginPage widget from login_page.dart
import 'send_sos.dart'; // Import the SendSOSPage widget from send_sos.dart
import 'registration_page.dart'; // Import the RegistrationPage widget from registration_page.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/send_sos': (context) => SendSOSPage(),
        '/register': (context) => RegistrationPage(), // Add registration route
      },
    );
  }
}

class MyAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 60, 74),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Upper Section: Dark Gray Background after the image
          Container(
            color: Color.fromARGB(255, 135, 155, 175),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Hi, I am SHEARA!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Transform.scale(
                  scale: 1.5,
                  child: Image.asset(
                    'assets/hi.gif',
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
          ),

          // Middle Section: Send SOS Button
          Container(
            color: Color.fromARGB(255, 216, 227, 238),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'You need help right now?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/send_sos'); // Navigate to Send SOS page
                  },
                  child: Text('Send SOS'),
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                ),
                SizedBox(height: 20), // Add space below the button
              ],
            ),
          ),

          // Lower Section: Registration Button
          Container(
            color: Color.fromARGB(255, 0, 60, 74),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20), // Add space above the button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the registration page
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('Register'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 52, 51, 54),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Add space below the button
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                    print('Login');
                  },
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
