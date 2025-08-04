import 'package:flutter/material.dart';
import 'package:internship/desertbooking/booking/deserthaveli.dart';
import 'package:internship/desertbooking/booking/mama.dart';
import 'package:internship/desertbooking/booking/wind.dart';

class DesertBookingHotel extends StatefulWidget {
  const DesertBookingHotel({super.key});

  @override
  State<DesertBookingHotel> createState() => _DesertBookingHotelState();
}

class _DesertBookingHotelState extends State<DesertBookingHotel> {
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
        backgroundColor: const Color(0xFF2E7D32),
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const deserthaveli()),
                );
              },
              child: buildHotelCard(
                'assets2/images2/q.jpeg',
                'Desert Haveli Guest House',
                'Near Desert National Park, Jaisalmer, Rajasthan',
                'Excellent 9.1/10',
                width,
                height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const mama()),
                );
              },
              child: buildHotelCard(
                'assets2/images2/r.jpeg',
                'Mama’s Desert Camp',
                'Khuri Village, Jaisalmer',
                'Very Good 8.7/10',
                width,
                height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const wind()),
                );
              },
              child: buildHotelCard(
                'assets2/images2/s.jpeg',
                'Winds Desert Camp',
                'Sam Sand Dunes, Jaisalmer',
                'Excellent 9.3/10',
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
      String rating,
      double width,
      double height,
      ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.04),
      ),
      elevation: 6,
      margin: EdgeInsets.only(bottom: height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(width * 0.04),
            ),
            child: Image.asset(
              imagePath,
              height: height * 0.18,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Info Block
          Padding(
            padding: EdgeInsets.all(width * 0.035),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Rating Row
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.025,
                    vertical: height * 0.005,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(width * 0.015),
                  ),
                  child: Text(
                    rating,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.033,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.012),
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.045,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: height * 0.008),
                Text(
                  address,
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.grey,
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