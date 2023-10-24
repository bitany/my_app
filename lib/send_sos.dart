import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SendSOSPage extends StatefulWidget {
  @override
  _SendSOSPageState createState() => _SendSOSPageState();
}

class _SendSOSPageState extends State<SendSOSPage> {
  String userLocation = "Location not available";

  Future<void> getUserLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        userLocation =
            "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
      });
    } catch (e) {
      print(e.toString());
    }
  }

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Send SOS'),
        backgroundColor: Colors.blueGrey[400],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Add action for the profile icon here
            },
          ),
          Expanded(
            child: Center(
              child: Text(
                'Username', // Replace with the actual username
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Preferences'),
                ),
                PopupMenuItem(
                  child: Text('Guide'),
                ),
                PopupMenuItem(
                  child: Text('About the Developer'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Share Your Location:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              userLocation,
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {
                getUserLocation();
              },
              child: Text('Get Location'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.red[300],
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'Microphone',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
