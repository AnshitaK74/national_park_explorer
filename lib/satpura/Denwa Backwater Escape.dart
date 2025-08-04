import 'package:flutter/material.dart';

class denwa extends StatefulWidget {
  const denwa({super.key});

  @override
  State<denwa> createState() => _denwaState();
}

class _denwaState extends State<denwa> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Denwa Backwater Escape"),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(w * 0.04),
        children: [
          // Image collage
          SizedBox(
            height: h * 0.25,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets2/images2/73.jpg',
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
                            'assets2/images2/74.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.01),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets2/images2/76.jpeg',
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

          // Info card
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Denwa Backwater Escape, Satpura",
                    style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: h * 0.01),
                  Text(
                    "Village Sarangpur, Sohagpur,\nMadhya Pradesh 461771, India",
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

          // Cottage
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cottage", style: TextStyle(fontSize: w * 0.042, fontWeight: FontWeight.bold)),
                  SizedBox(height: h * 0.01),
                  Text("🛏 Bedroom: 1 double bed", style: TextStyle(fontSize: w * 0.035)),
                  Text("👤 Capacity: 2 adults", style: TextStyle(fontSize: w * 0.035)),
                  Text("🌅 River view with private deck", style: TextStyle(fontSize: w * 0.035)),
                  Text("🛁 Open-to-sky shower", style: TextStyle(fontSize: w * 0.035)),
                  SizedBox(height: h * 0.01),
                  Text("₹9,800 per night", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.015),

          // Tree House
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tree House", style: TextStyle(fontSize: w * 0.042, fontWeight: FontWeight.bold)),
                  SizedBox(height: h * 0.01),
                  Text("🛏 Bedroom: Queen-size bed", style: TextStyle(fontSize: w * 0.035)),
                  Text("👥 Capacity: 2 adults", style: TextStyle(fontSize: w * 0.035)),
                  Text("🌳 Elevated forest view", style: TextStyle(fontSize: w * 0.035)),
                  Text("🌌 Ideal for nature lovers", style: TextStyle(fontSize: w * 0.035)),
                  SizedBox(height: h * 0.01),
                  Text("₹11,500 per night", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                ],
              ),
            ),
          ),

          SizedBox(height: h * 0.02),

          // Amenities
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amenities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.045)),
                  SizedBox(height: h * 0.01),
                  Text("✔ Infinity Pool Overlooking Denwa River", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Nature Trails & Canoe Rides", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Organic Farm-to-Table Dining", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Wildlife Safari Assistance", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Free Wi-Fi & Parking", style: TextStyle(fontSize: w * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
