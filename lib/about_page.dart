import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Health Emergency App'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Health Emergency and Response App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Our mission is to provide a user-friendly and effective mobile application for handling health emergencies and responses. We understand the importance of quick and reliable assistance in critical situations.',
            ),
            SizedBox(height: 20),
            Text(
              'Key Features',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1. Emergency Contacts: Easily access and call local emergency services such as hospitals, ambulance services, and more.',
            ),
            Text(
              '2. Quick Assistance: Notify your emergency contacts with your current location and status in just a few taps.',
            ),
            Text(
              '3. Medical Information: Store essential medical information for quick reference by healthcare professionals.',
            ),
            Text(
              '4. Emergency Tips: Get valuable information and tips on handling common health emergencies.',
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'If you have any questions or feedback, please feel free to reach out to us at:',
            ),
            Text(
              'Email: contact@healthemergencyapp.com',
            ),
            Text(
              'Phone: +123-456-7890',
            ),
          ],
        ),
      ),
    );
  }
}
