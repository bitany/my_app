import 'package:flutter/material.dart';
import 'guide.dart'; // Import your guide.dart file
import 'settings.dart'; // Import your settings.dart file
import 'send_sos.dart'; // Import your send_sos.dart file

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      '/settings': (context) => Settings(), // Use Settings
      '/guide': (context) => GuidePage(), // Use GuidePage
      '/send_sos': (context) => SendSOSPage(), // Add the route for SendSOSPage
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 202, 88),
        centerTitle: true,
        title: Text('Username'), // Replace with the user's actual username
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            Navigator.of(context).pushNamed('/settings'); // Use named route
          },
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'preference') {
                // Handle preference
              } else if (value == 'guide') {
                Navigator.of(context).pushNamed('/guide'); // Use named route
              } else if (value == 'about') {
                // Handle about the developer
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'preference',
                  child: Text('Preference'),
                ),
                PopupMenuItem(
                  value: 'guide',
                  child: Text('Guide'),
                ),
                PopupMenuItem(
                  value: 'about',
                  child: Text('About the Developer'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/home_bg.png', // Replace with your image file path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SquareButton(imageAsset: 'assets/camera.png'),
                      SquareButton(imageAsset: 'assets/video.png'),
                    ],
                  ),
                  GestureDetector(
                    onLongPress: () {
                      showColorCircles(context);
                    },
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        'assets/red_button.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SquareButton(imageAsset: 'assets/microphone.png'),
                      SquareButton(imageAsset: 'assets/chat.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showColorCircles(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                color: Colors.red,
                onTap: () {
                  Navigator.pushNamed(context, '/send_sos'); // Use named route
                },
              ),
              // Add other colored buttons here with their respective logic
              CircleButton(color: Colors.orange),
              CircleButton(color: Colors.yellow),
              CircleButton(color: Colors.blue),
              CircleButton(color: Colors.green),
            ],
          ),
        );
      },
    );
  }
}

class SquareButton extends StatelessWidget {
  final String imageAsset;

  SquareButton({required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imageAsset,
        width: 120, // Adjust the width as needed
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final Color color;
  final Function()? onTap;

  CircleButton({required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
