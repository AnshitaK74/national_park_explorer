import 'package:flutter/material.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/bonhabi.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/diphlu.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/infinityhotel.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/iorahotel.dart';

class KazirangaBookingh extends StatefulWidget {
  const KazirangaBookingh({super.key});

  @override
  State<KazirangaBookingh> createState() => _KazirangaBookinghState();
}

class _KazirangaBookinghState extends State<KazirangaBookingh> {
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const infinity()),
                );
              },
              child: buildHotelCard(
                imagePath: 'assets2/images2/img.png',
                name: 'Infinity Kaziranga Wilderness',
                address: 'Near Kohora Range, Kaziranga National Park',
                rating: 'Excellent 8.5/10',
                width: width,
                height: height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const iora()),
                );
              },
              child: buildHotelCard(
                imagePath: 'assets2/images2/l.jpeg',
                name: 'IORA – The Retreat',
                address: 'Kaziranga, Golaghat District, Assam',
                rating: 'Excellent 9.0/10',
                width: width,
                height: height,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const bon()),
                );
              },
              child: buildHotelCard(
                imagePath: 'assets2/images2/m.jpeg',
                name: 'Bon Habi Resort',
                address: 'Near Kohora, Kaziranga',
                rating: 'Excellent 8.8/10',
                width: width,
                height: height,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHotelCard({
    required String imagePath,
    required String name,
    required String address,
    required String rating,
    required double width,
    required double height,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      elevation: 6,
      margin: EdgeInsets.only(bottom: height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(width * 0.03),
            ),
            child: Image.asset(
              imagePath,
              height: height * 0.18,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.035),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.025,
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
                      fontSize: width * 0.033,
                      letterSpacing: width * 0.001,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.045,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: height * 0.006),
                Text(
                  address,
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
