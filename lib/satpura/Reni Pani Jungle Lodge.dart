import 'package:flutter/material.dart';

class reni extends StatefulWidget {
  const reni({super.key});

  @override
  State<reni> createState() => _reniState();
}

class _reniState extends State<reni> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          "Reni Pani Jungle Lodge",
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
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
                      'assets2/images2/r1.jpeg',
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
                            'assets2/images2/r2.jpeg',
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
                            'assets2/images2/r3.jpeg',
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
                    "Reni Pani Jungle Lodge, Satpura",
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Text(
                    "Near Satpura Tiger Reserve,\nSarai, Madhya Pradesh 461775, India",
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

          // Forest Cottage Card
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
                    "Forest Cottage",
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("🛏 Bedroom: King-size bed", style: TextStyle(fontSize: width * 0.035)),
                  Text("👥 Capacity: 2 adults", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌳 Set in natural forest", style: TextStyle(fontSize: width * 0.035)),
                  Text("🔥 Fireplace & Private Sit-out", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹12,500 per night",
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

          // Luxury Tent Card
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
                    "Luxury Tent",
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("🛏 Bedroom: Queen-size bed", style: TextStyle(fontSize: width * 0.035)),
                  Text("👤 Capacity: 2 adults", style: TextStyle(fontSize: width * 0.035)),
                  Text("⛺ Canvas tent with ensuite bath", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌿 Eco-luxury experience", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹10,800 per night",
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

          // Amenities Card
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
                    "Amenities",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("✔ Nature Walks & Game Drives", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Library & Outdoor Lounge", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Swimming Pool", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Gourmet Dining", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Campfire Evenings", style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
