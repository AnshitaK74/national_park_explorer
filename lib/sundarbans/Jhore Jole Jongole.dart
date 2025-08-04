import 'package:flutter/material.dart';

class jhore extends StatefulWidget {
  const jhore({super.key});

  @override
  State<jhore> createState() => _jhoreState();
}

class _jhoreState extends State<jhore> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Jhore Jole Jongole", style: TextStyle(fontSize: w * 0.05)),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(w * 0.04),
        children: [
          // Image Collage
          SizedBox(
            height: h * 0.25,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets2/images2/jhol1.jpeg',
                      fit: BoxFit.cover,
                      height: h * 0.25,
                    ),
                  ),
                ),
                SizedBox(width: w * 0.025),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets2/images2/jhol5.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.012),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets2/images2/jhol6.jpeg',
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

          SizedBox(height: h * 0.03),

          // Info Card
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jhore Jole Jongole Eco Resort",
                    style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: h * 0.01),
                  Text(
                    "Jharkhali, Sundarbans, South 24 Parganas,\nWest Bengal 743312, India",
                    style: TextStyle(fontSize: w * 0.035),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.025),

          Text(
            'Room Details',
            style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: h * 0.015),

          // Deluxe Room
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Deluxe AC Room", style: TextStyle(fontSize: w * 0.045, fontWeight: FontWeight.bold)),
                  SizedBox(height: h * 0.015),
                  Text("🛏 Bedroom: 1 queen-size bed", style: TextStyle(fontSize: w * 0.035)),
                  Text("👤 Capacity: 2 adults", style: TextStyle(fontSize: w * 0.035)),
                  Text("🌳 Overlooking the lush greenery", style: TextStyle(fontSize: w * 0.035)),
                  Text("🌀 Air-conditioned and spacious", style: TextStyle(fontSize: w * 0.035)),
                  SizedBox(height: h * 0.015),
                  Text("₹4,200 per night", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                ],
              ),
            ),
          ),

          // Family Cottage
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Family Cottage", style: TextStyle(fontSize: w * 0.045, fontWeight: FontWeight.bold)),
                  SizedBox(height: h * 0.015),
                  Text("🛏 Bedroom: 2 double beds", style: TextStyle(fontSize: w * 0.035)),
                  Text("👥 Capacity: 4 people", style: TextStyle(fontSize: w * 0.035)),
                  Text("🏕 Great for groups or families", style: TextStyle(fontSize: w * 0.035)),
                  Text("🌾 Surrounded by nature and water bodies", style: TextStyle(fontSize: w * 0.035)),
                  SizedBox(height: h * 0.015),
                  Text("₹6,800 per night", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.02),

          // Amenities
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amenities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.045)),
                  SizedBox(height: h * 0.01),
                  Text("✔ Guided boat safari & bird watching", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Children’s play area", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Restaurant with local cuisine", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Conference hall & meeting room", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Eco-tourism themed architecture", style: TextStyle(fontSize: w * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
