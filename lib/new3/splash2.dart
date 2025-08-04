import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internship/login.dart';
import 'package:internship/new3/bottom.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () async {
      if (FirebaseAuth.instance.currentUser != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => bottom()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => login2()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double height = screenSize.height;
    final double width = screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Circular Tiger Image (Placeholder Icon)
              Container(
                height: height * 0.22,
                width: height * 0.22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade100,
                ),
                child: Icon(
                  Icons.pets,
                  size: width * 0.15,
                  color: Colors.green.shade800,
                ),
              ),

              SizedBox(height: height * 0.04),

              // App Title
              Text(
                'National Parks Explorer',
                textScaleFactor: 1.0,
                style: TextStyle(
                  fontSize: width * 0.07,
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  letterSpacing: width * 0.0025,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: height * 0.015),

              // Tagline
              Text(
                'Discover the Wild | Protect the Future',
                textScaleFactor: 1.0,
                style: TextStyle(
                  fontSize: width * 0.045,
                  color: Colors.green.shade400,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
