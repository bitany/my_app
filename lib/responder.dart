import 'package:flutter/material.dart';
import 'package:my_app/settings.dart';

class ResponderPage extends StatelessWidget {
  const ResponderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responder"), // Removed Center widget
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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.green,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.video_camera_front_rounded,
                color: Colors.yellow,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.red,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.mic_rounded,
                color: Colors.orange,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.message_rounded,
                color: Colors.red,
              ),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
