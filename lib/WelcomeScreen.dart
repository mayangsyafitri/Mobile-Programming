import 'package:flutter/material.dart';
import 'Register.dart';
//
//void main() {
 // runApp(WellnessWayApp());
//}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 13, 247),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png',),
              SizedBox(height: 20),
              Text(
                'Wellness Way',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Bimbingan Konseling',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()),
            );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 186, 209, 228),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 17, 100, 209), 
              ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } 
}
