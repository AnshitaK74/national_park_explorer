import 'package:flutter/material.dart';

class wind extends StatefulWidget {
  const wind({super.key});

  @override
  State<wind> createState() => _windState();
}

class _windState extends State<wind> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wind Desert Camp",
          style: TextStyle(fontSize: 18 * textScale),
        ),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.04),
        children: [
          SizedBox(
            height: height * 0.24,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    child: Image.asset(
                      'assets2/images2/90.jpeg',
                      fit: BoxFit.cover,
                      height: height * 0.24,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.025),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          child: Image.asset(
                            'assets2/images2/second90.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          child: Image.asset(
                            'assets2/images2/third90.jpeg',
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

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.04),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind Desert Camp",
                    style: TextStyle(
                        fontSize: 18 * textScale, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Sam Village, Jaisalmer,\nRajasthan 345001, India",
                    style: TextStyle(fontSize: 14 * textScale),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: height * 0.025),

          Padding(
            padding: EdgeInsets.only(left: width * 0.02, bottom: width * 0.02),
            child: Text(
              'Room Details',
              style: TextStyle(
                fontSize: 20 * textScale,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),

          _buildRoomCard(
            width: width,
            height: height,
            textScale: textScale,
            title: "Premium Tent",
            details: const [
              "🛏 Bedroom: 1 queen bed",
              "👤 Capacity: 2 adults",
              "🚿 Bathroom: Attached western style",
              "🌾 Rustic desert ambiance",
              "🌀 Fan cooling",
            ],
            price: "₹4,200 per night",
          ),

          _buildRoomCard(
            width: width,
            height: height,
            textScale: textScale,
            title: "Super Deluxe Tent",
            details: const [
              "🛏 Bedroom: 1 king bed",
              "👥 Capacity: 3 people",
              "🚿 Spacious bathroom",
              "❄️ Air-conditioned interior",
              "🎪 Personal sitting area",
            ],
            price: "₹5,900 per night",
          ),

          SizedBox(height: height * 0.02),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            margin: EdgeInsets.symmetric(vertical: height * 0.015),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities",
                    style: TextStyle(
                      fontSize: 17 * textScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  Text("✔ Camel safari & jeep ride",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Cultural folk dance & music",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Bonfire & stargazing",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Buffet dining experience",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Free Wi-Fi & parking",
                      style: TextStyle(fontSize: 14 * textScale)),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoomCard({
    required double width,
    required double height,
    required double textScale,
    required String title,
    required List<String> details,
    required String price,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      margin: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17 * textScale,
              ),
            ),
            SizedBox(height: height * 0.015),
            ...details.map(
                  (d) => Padding(
                padding: EdgeInsets.only(bottom: height * 0.007),
                child: Text(
                  d,
                  style: TextStyle(fontSize: 13.5 * textScale),
                ),
              ),
            ),
            SizedBox(height: height * 0.015),
            Text(
              price,
              style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 15 * textScale,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
