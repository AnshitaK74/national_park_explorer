import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internship/login.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    final Size size = MediaQuery.of(context).size;
    final double w = size.width;
    final double h = size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFd0f0c0),
      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(fontSize: w * 0.05),
        ),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: user == null
          ? Center(
        child: Text(
          'No user is logged in',
          style: TextStyle(fontSize: w * 0.045),
        ),
      )
          : Center(
        child: Card(
          elevation: 6,
          margin: EdgeInsets.symmetric(
              horizontal: w * 0.06, vertical: h * 0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(w * 0.05),
          ),
          child: Padding(
            padding: EdgeInsets.all(w * 0.06),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: w * 0.13,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.person,
                    size: w * 0.16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: h * 0.03),
                Text(
                  user.email ?? 'No Email Found',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: w * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: h * 0.015),
                Text(
                  'Password: ********',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: h * 0.04),
                ElevatedButton.icon(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const login2()),
                    );
                  },
                  icon: Icon(Icons.logout, size: w * 0.05),
                  label: Text(
                    'Log Out',
                    style: TextStyle(fontSize: w * 0.045),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: w * 0.08, vertical: h * 0.018),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(w * 0.03),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
