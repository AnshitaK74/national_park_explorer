import 'package:flutter/material.dart';
import 'package:internship/jimbooking/booking/ahana.dart';
import 'package:internship/jimbooking/booking/riverview.dart';

class JimBookingHotel extends StatelessWidget {
  const JimBookingHotel({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      appBar: AppBar(
        title: Text(
          'Hotels',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.05,
            letterSpacing: width * 0.001,
          ),
        ),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.015,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const riverview()),
                );
              },
              child: buildHotelCard(
                'assets2/images2/w.jpeg',
                'The Riverview Retreat',
                'Dhikuli, Jim Corbett National Park',
                width,
                height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ahana()),
                );
              },
              child: buildHotelCard(
                'assets2/images2/x.jpeg',
                'Aahana – The Corbett Wilderness',
                'Village Savaldeh, Ramnagar',
                width,
                height,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHotelCard(
      String imagePath,
      String name,
      String address,
      double width,
      double height,
      ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.04),
      ),
      elevation: 6,
      margin: EdgeInsets.only(bottom: height * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with increased height
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(width * 0.04),
            ),
            child: Image.asset(
              imagePath,
              height: height * 0.21,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Info Block
          Padding(
            padding: EdgeInsets.all(width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.047,
                    letterSpacing: width * 0.0015,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  address,
                  style: TextStyle(
                    fontSize: width * 0.036,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
