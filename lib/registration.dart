import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:internship/login.dart';
import 'package:internship/new2/info.dart';
import 'package:internship/new3/bottom.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  bool _obscurePassword = true;

  void _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration successful')),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => bottom()),
        );
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? "Registration failed")),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('An unexpected error occurred')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    final titleFont = w * 0.07;
    final textFont = w * 0.042;
    final iconSize = w * 0.06;
    final fieldSpacing = h * 0.02;
    final paddingAll = w * 0.05;
    final containerWidth = w * 0.88;
    final buttonFont = w * 0.045;

    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: containerWidth,
            padding: EdgeInsets.all(paddingAll),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(w * 0.04),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.1),
                  blurRadius: 12,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: titleFont,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: fieldSpacing + 5),

                  // Email Field
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: textFont),
                      border: const OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email, size: iconSize),
                    ),
                    style: TextStyle(fontSize: textFont),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email should not be empty";
                      } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}$')
                          .hasMatch(value)) {
                        return "Enter a valid email address";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: fieldSpacing),

                  // Password Field
                  TextFormField(
                    controller: password,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: textFont),
                      border: const OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock, size: iconSize),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: iconSize,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    style: TextStyle(fontSize: textFont),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password should not be empty";
                      } else if (!RegExp(r'[@*!@#]').hasMatch(value)) {
                        return "Include a special character";
                      } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                        return "Include at least 1 uppercase letter";
                      } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                        return "Include at least 1 lowercase letter";
                      } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                        return "Include at least 1 number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: fieldSpacing + 10),

                  // Register Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _register,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: h * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w * 0.02),
                        ),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: buttonFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: fieldSpacing),

                  // Login Prompt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                          style: TextStyle(fontSize: textFont)),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login2(),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: textFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
