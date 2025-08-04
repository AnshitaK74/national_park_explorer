import 'package:flutter/material.dart';

class ahana extends StatefulWidget {
  const ahana({super.key});

  @override
  State<ahana> createState() => _ahanaState();
}

class _ahanaState extends State<ahana> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aahana – The Corbett Wilderness",
          style: TextStyle(fontSize: 18 * textScale),
        ),
        backgroundColor: Colors.green.shade600,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.04),
        children: [
          // Image collage
          SizedBox(
            height: height * 0.24,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    child: Image.asset(
                      'assets2/images2/41.jpeg',
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
                            'assets2/images2/42.jpeg',
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
                            'assets2/images2/43.jpeg',
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

          // Info card
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
                    "Aahana – The Corbett Wilderness",
                    style: TextStyle(
                      fontSize: 18 * textScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Village Savaldeh, Ramnagar,\nUttarakhand 244715, India",
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

          buildRoomCard(
            width: width,
            height: height,
            textScale: textScale,
            title: "Premium Room",
            details: const [
              "🛏 Bedroom: 1 king bed",
              "👤 Capacity: 2 adults",
              "🌿 Garden & forest views",
              "🛁 Luxury bathroom with tub",
              "🌳 Eco-friendly design",
            ],
            price: "₹9,500 per night",
          ),

          buildRoomCard(
            width: width,
            height: height,
            textScale: textScale,
            title: "The Villa",
            details: const [
              "🛏 Bedroom: 2 king beds + living room",
              "👥 Capacity: 4 adults or families",
              "🌿 Private lawn and verandah",
              "🛁 Spacious bathrooms with amenities",
              "🪟 Scenic forest-side stay",
            ],
            price: "₹18,000 per night",
          ),

          SizedBox(height: height * 0.02),

          // Amenities
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
                  Text("✔ Organic farm-to-table dining",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Nature therapy and Ayurveda spa",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Infinity pool & jungle safaris",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Yoga pavilion & meditation zone",
                      style: TextStyle(fontSize: 14 * textScale)),
                  Text("✔ Eco-responsible luxury living",
                      style: TextStyle(fontSize: 14 * textScale)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRoomCard({
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
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 17 * textScale),
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
            SizedBox(height: height * 0.012),
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
