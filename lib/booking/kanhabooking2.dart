import 'package:flutter/material.dart';
import 'package:internship/booking/banjoor%20tola.dart';
import 'package:internship/booking/earthlodge.dart';
import 'package:internship/kanhahotelbooking/banjoortolabooking.dart';
import 'package:internship/kanhahotelbooking/tulitiger.dart';

class kanhabooking2 extends StatefulWidget {
  const kanhabooking2({super.key});

  @override
  State<kanhabooking2> createState() => _kanhabooking2State();
}

class _kanhabooking2State extends State<kanhabooking2> {
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
        toolbarHeight: height * 0.065,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const banjoortolabooking(),
                  ),
                );
              },
              child: hotelCard(
                image: 'assets2/images2/d.jpeg',
                rating: 'Excellent 8.6/10',
                title: 'Banjoor Tola',
                location: 'Near village Mukki, Tehsil-Baihar, Kanha',
                width: width,
                height: height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tuli(),
                  ),
                );
              },
              child: hotelCard(
                image: 'assets2/images2/f.jpeg',
                rating: 'Excellent 8.0/10',
                title: 'Tuli Tiger Resort',
                location: 'Near village Mocha, Kanha',
                width: width,
                height: height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const earthlodge()),
                );
              },
              child: hotelCard(
                image: 'assets2/images2/19.jpeg',
                rating: 'Superb 9.0/10',
                title: 'Kanha Jungle Lodge',
                location: 'Kanha National Park, Mukki Gate, Kanha',
                width: width,
                height: height,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hotelCard({
    required String image,
    required String rating,
    required String title,
    required String location,
    required double width,
    required double height,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      elevation: 5,
      margin: EdgeInsets.only(bottom: height * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(width * 0.03),
            ),
            child: Image.asset(
              image,
              height: height * 0.18, // Reduced height
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02,
                    vertical: height * 0.006,
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
                      fontSize: width * 0.032,
                      letterSpacing: width * 0.001,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.008),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.045,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: width * 0.035,
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
