import 'package:flutter/material.dart';

class nahar extends StatefulWidget {
  const nahar({super.key});

  @override
  State<nahar> createState() => _naharState();
}

class _naharState extends State<nahar> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("Nahargarh"),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.02),
        children: [
          // Image collage
          SizedBox(
            height: h * 0.25,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(w * 0.04),
                    child: Image.asset(
                      'assets2/images2/n1.jpeg',
                      fit: BoxFit.cover,
                      height: double.infinity,
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
                          borderRadius: BorderRadius.circular(w * 0.04),
                          child: Image.asset(
                            'assets2/images2/n2.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.012),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(w * 0.04),
                          child: Image.asset(
                            'assets2/images2/n3.jpeg',
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
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.04),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nahargarh, Ranthambore",
                    style: TextStyle(
                      fontSize: w * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  Text(
                    "Khilchipur, Sawai Madhopur,\nRajasthan 322001, India",
                    style: TextStyle(
                      fontSize: w * 0.035,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.025),

          Text(
            "Room Details",
            style: TextStyle(
              fontSize: w * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: h * 0.015),

          // Heritage Room
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.035),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Heritage Room",
                    style: TextStyle(
                      fontSize: w * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: h * 0.012),
                  Text("🛏 Bedroom: 1 large double bed", style: TextStyle(fontSize: w * 0.035)),
                  Text("👤 Capacity: 2 adults", style: TextStyle(fontSize: w * 0.035)),
                  Text("🏰 Mughal-style decor with courtyard view", style: TextStyle(fontSize: w * 0.035)),
                  Text("🛁 Antique-style bathroom", style: TextStyle(fontSize: w * 0.035)),
                  SizedBox(height: h * 0.012),
                  Text(
                    "₹8,700 per night",
                    style: TextStyle(
                      fontSize: w * 0.04,
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.015),

          // Royal Suite
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.035),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Royal Suite",
                    style: TextStyle(
                      fontSize: w * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: h * 0.012),
                  Text("🛏 Bedroom: King-size bed + lounge", style: TextStyle(fontSize: w * 0.035)),
                  Text("👥 Capacity: 3 adults or 2+2", style: TextStyle(fontSize: w * 0.035)),
                  Text("🏞 Pool-facing with private sit-out", style: TextStyle(fontSize: w * 0.035)),
                  Text("🛁 Jacuzzi and marble flooring", style: TextStyle(fontSize: w * 0.035)),
                  SizedBox(height: h * 0.012),
                  Text(
                    "₹12,900 per night",
                    style: TextStyle(
                      fontSize: w * 0.04,
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.025),

          // Amenities
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(w * 0.035),
            ),
            child: Padding(
              padding: EdgeInsets.all(w * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities",
                    style: TextStyle(
                      fontSize: w * 0.043,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: h * 0.012),
                  Text("✔ Heritage architecture", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Outdoor Pool & Garden", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Jungle Safari Assistance", style: TextStyle(fontSize: w * 0.035)),
                  Text("✔ Cultural Folk Performances", style: TextStyle(fontSize: w * 0.035)),
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
