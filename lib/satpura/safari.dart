import 'package:flutter/material.dart';

class SafariBookingz extends StatefulWidget {
  const SafariBookingz({super.key});

  @override
  State<SafariBookingz> createState() => _SafariBookingzState();
}

class _SafariBookingzState extends State<SafariBookingz> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          "Safari Booking",
          style: TextStyle(fontSize: w * 0.05),
        ),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(w * 0.04),
        children: [
          SizedBox(height: h * 0.02),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.04),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Safari Options",
                    style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: h * 0.015),
                  Text(
                    "1. Morning Safari (6:00 AM - 10:00 AM)",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                  Text(
                    "2. Afternoon Safari (2:00 PM - 6:00 PM)",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                  Text(
                    "3. Full Day Safari",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.025),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.04),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pricing",
                    style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: h * 0.015),
                  Text(
                    "• Indian Nationals: ₹2,500 per person",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                  Text(
                    "• Foreign Nationals: ₹4,500 per person",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.025),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.04),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Important Notes",
                    style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: h * 0.015),
                  Text(
                    "• Carry a valid ID proof during safari.",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                  Text(
                    "• Arrive at the gate 30 minutes early.",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                  Text(
                    "• Safari is subject to weather conditions.",
                    style: TextStyle(fontSize: w * 0.04),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.04),
        ],
      ),
    );
  }
}
