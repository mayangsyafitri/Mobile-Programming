// main.dart

import 'package:flutter/material.dart';

import 'home_screen.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wellness Way',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellness Way'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Logo
            Image.asset('assets/logo.png', width: 100, height: 100),

            // App name and subtitle
            Text(
              'Wellness Way',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text('Bimbingan Konseling'),

            // Registration form
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
