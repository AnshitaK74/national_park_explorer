import 'package:flutter/material.dart';

class infinity extends StatefulWidget {
  const infinity({super.key});

  @override
  State<infinity> createState() => _infinityState();
}

class _infinityState extends State<infinity> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          "Infinity Kaziranga Wilderness",
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.green.shade600,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: height * 0.065,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.04),
        children: [
          // Top image collage
          SizedBox(
            height: height * 0.25,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    child: Image.asset(
                      'assets/images/101.jpeg',
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
                            'assets/images/102.jpeg',
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
                            'assets/images/103.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: height * 0.03),

          // Info Card
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
                    "Infinity Kaziranga Wilderness",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.045,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Text(
                    "Bocha Gaon, Kaziranga National Park,\nAssam 785609, India",
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
            "Room Details",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: width * 0.048,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: height * 0.015),

          // Room 1
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
                    'Luxury Room',
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text('🛏 Bedroom: 1 king bed', style: TextStyle(fontSize: width * 0.035)),
                  Text('👨‍👩‍👧 Capacity: 2 adults + 1 child', style: TextStyle(fontSize: width * 0.035)),
                  Text('🚿 Bathroom: Attached with luxury toiletries', style: TextStyle(fontSize: width * 0.035)),
                  Text('🌿 Balcony with garden or pool view', style: TextStyle(fontSize: width * 0.035)),
                  Text('❄ Fully air-conditioned', style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    '₹4,500 / night',
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

          // Room 2
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
                    'River Lodge Suite',
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text('🛏 Bedroom: King bed with river view', style: TextStyle(fontSize: width * 0.035)),
                  Text('👨‍👨‍👦 Capacity: 3 adults', style: TextStyle(fontSize: width * 0.035)),
                  Text('🛁 Ensuite bathroom with bathtub', style: TextStyle(fontSize: width * 0.035)),
                  Text('🪟 Private lounge and sit-out', style: TextStyle(fontSize: width * 0.035)),
                  Text('🍾 Mini bar & in-room dining', style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    '₹6,800 / night',
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

          // Amenities
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
                  Text('✔ Swimming Pool & Spa', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Guided Jeep Safaris', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Nature Trail Walks', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ In-house Restaurant', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Cultural Folk Performances', style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
