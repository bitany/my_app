import 'package:flutter/material.dart';
import 'package:my_app/settings.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_suggest_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding:
                EdgeInsets.symmetric(vertical: 30.0), // Add padding to the text
            child: Text(
              "HOW TO USE SHEARA?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey,
            ),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.0), // Add padding to the text
                    child: Text(
                      "WATCH THE TUTORIAL VIDEOS",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Change button color to white
                      minimumSize:
                          const Size(400, 50), // Change button width and height
                    ),
                    onPressed: () {
                      // Open video tutorial 1
                    },
                    child: const Text(
                      'Video 1',
                      style: TextStyle(
                        color: Colors.grey, // Change font color to grey
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0), // Add space between buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Change button color to white
                      minimumSize:
                          const Size(400, 50), // Change button width and height
                    ),
                    onPressed: () {
                      // Open video tutorial 2
                    },
                    child: const Text(
                      'Video 2',
                      style: TextStyle(
                        color: Colors.grey, // Change font color to grey
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0), // Add space between buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Change button color to white
                      minimumSize:
                          const Size(400, 50), // Change button width and height
                    ),
                    onPressed: () {
                      // Open video tutorial 3
                    },
                    child: const Text(
                      'Video 3',
                      style: TextStyle(
                        color: Colors.grey, // Change font color to grey
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0), // Add space between buttons
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Change button color to white
                      minimumSize:
                          const Size(400, 50), // Change button width and height
                    ),
                    onPressed: () {
                      // Open video tutorial 4
                    },
                    child: const Text(
                      'Video 4',
                      style: TextStyle(
                        color: Colors.grey, // Change font color to grey
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
