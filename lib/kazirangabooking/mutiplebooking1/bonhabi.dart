
import 'package:flutter/material.dart';

class bon extends StatefulWidget {
  const bon({super.key});

  @override
  State<bon> createState() => _bonState();
}

class _bonState extends State<bon> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        title: Text(
          'Bon Habi Resort',
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 1,

          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.04),
        children: [
          SizedBox(
            height: height * 0.25,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    child: Image.asset(
                      'assets/images/bon.jpeg',
                      fit: BoxFit.cover,
                      height: double.infinity,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          child: Image.asset(
                            'assets/images/bon2.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          child: Image.asset(
                            'assets/images/bon3.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.03),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bon Habi Resort',
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Text(
                    'Kohora, Kaziranga National Park,\nAssam 785609, India',
                    style: TextStyle(
                      fontSize: width * 0.035,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.025),
          Text(
            'Room Details',
            style: TextStyle(
              fontSize: width * 0.048,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: height * 0.015),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Garden Cottage',
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("🛏 Bedroom: 1 king bed", style: TextStyle(fontSize: width * 0.035)),
                  Text("👨‍👩‍👧 Capacity: 2 adults + 1 child", style: TextStyle(fontSize: width * 0.035)),
                  Text("🚿 Bathroom: Attached", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌿 Veranda with garden view", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌀 Ceiling fan & mosquito net", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹3,200 per night",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.015),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deluxe Cottage',
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("🛏 Bedroom: 1 king + 1 single bed", style: TextStyle(fontSize: width * 0.035)),
                  Text("👥 Capacity: 3 people", style: TextStyle(fontSize: width * 0.035)),
                  Text("🚿 Bathroom: Attached western-style", style: TextStyle(fontSize: width * 0.035)),
                  Text("❄️ Air-conditioned", style: TextStyle(fontSize: width * 0.035)),
                  Text("🧼 Hot water and toiletries", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹5,800 per night",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.025),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amenities',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("✔ Free Wi-Fi", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Room service", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Power backup", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ On-site dining", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Nature walk arrangements", style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
