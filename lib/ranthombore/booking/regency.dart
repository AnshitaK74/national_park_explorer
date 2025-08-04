import 'package:flutter/material.dart';

class regency extends StatefulWidget {
  const regency({super.key});

  @override
  State<regency> createState() => _regencyState();
}

class _regencyState extends State<regency> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "The Regency – Corbett",
          style: TextStyle(fontSize: 18 * textScale),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.04),
        children: [
          // Image Collage
          SizedBox(
            height: height * 0.24,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    child: Image.asset(
                      'assets2/images2/44.jpeg',
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
                          borderRadius: BorderRadius.circular(width * 0.03),
                          child: Image.asset(
                            'assets2/images2/45.jpeg',
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
                            'assets2/images2/46.jpeg',
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

          // Hotel Info Card
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Regency – Corbett",
                    style: TextStyle(
                      fontSize: 18 * textScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Sitabani Road, Ramnagar,\nUttarakhand 244715, India",
                    style: TextStyle(fontSize: 14 * textScale),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: height * 0.025),

          Padding(
            padding: EdgeInsets.only(left: width * 0.01),
            child: Text(
              'Room Details',
              style: TextStyle(
                fontSize: 19 * textScale,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),

          buildRoomCard(
            width,
            height,
            textScale,
            "Deluxe Room",
            const [
              "🛏 Bedroom: 1 queen bed",
              "👤 Capacity: 2 adults",
              "🌳 Balcony with forest view",
              "🛁 Attached modern bathroom",
              "🛋 Minimalist interiors",
            ],
            "₹5,500 per night",
          ),

          buildRoomCard(
            width,
            height,
            textScale,
            "Family Suite",
            const [
              "🛏 2 interconnected rooms",
              "👥 Capacity: 4 guests",
              "🛁 2 bathrooms with hot water",
              "🪟 Garden-facing windows",
              "📺 LCD TV + Sofa set",
            ],
            "₹9,200 per night",
          ),

          SizedBox(height: height * 0.015),

          // Amenities Card
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
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
                  Text("✔ Multi-cuisine restaurant",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Outdoor swimming pool",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Jeep safari & guided tours",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Conference hall & lawn area",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ WiFi and power backup",
                      style: TextStyle(fontSize: 14 * textScale)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRoomCard(
      double width,
      double height,
      double textScale,
      String title,
      List<String> details,
      String price,
      ) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      margin: EdgeInsets.symmetric(vertical: height * 0.015),
      child: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
              TextStyle(fontSize: 16.5 * textScale, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * 0.01),
            ...details.map(
                  (item) => Padding(
                padding: EdgeInsets.only(bottom: height * 0.006),
                child: Text(
                  item,
                  style: TextStyle(fontSize: 13.5 * textScale),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
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
