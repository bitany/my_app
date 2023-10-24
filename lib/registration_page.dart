import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/homepage.dart';

void main() {
  runApp(const MaterialApp(home: RegistrationPage()));
}

class RegPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RegistrationPage(), routes: {
      '/login': (context) => LoginPage(),
      '/register': (context) => HomePage(), // Remove the extra parentheses
    });
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/girl.png'),
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.blueGrey,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Hi, I'm SHEARA!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Enter Student/Employee Number',
                      ),
                      textAlign: TextAlign.center, // Center-align the text
                    ),
                    const SizedBox(height: 5.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Enter Username',
                      ),
                      textAlign: TextAlign.center, // Center-align the text
                    ),
                    const SizedBox(height: 5.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Create Password',
                      ),
                      textAlign: TextAlign.center, // Center-align the text
                    ),
                    const SizedBox(height: 5.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Confirm Password',
                      ),
                      textAlign: TextAlign.center, // Center-align the text
                    ),
                    const SizedBox(height: 5.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Checkbox(value: false, onChanged: null),
                            Text('Student'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Checkbox(value: false, onChanged: null),
                            Text('Employee'),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text('Register'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/login'); // Added / to the route name
                        print('Login');
                      },
                      child: const Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Log in',
                              style: TextStyle(color: Colors.blue),
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
        ),
      ),
    );
  }
}
