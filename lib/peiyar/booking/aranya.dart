import 'package:flutter/material.dart';

class Aranya extends StatefulWidget {
  const Aranya({super.key});

  @override
  State<Aranya> createState() => _AranyaState();
}

class _AranyaState extends State<Aranya> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          "Aranya Nivas – KTDC",
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF2E7D32),
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
                      'assets2/images2/2.jpg',
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
                            'assets2/images2/3.jpeg',
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
                            'assets2/images2/4.jpeg',
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
                    "Aranya Nivas – KTDC",
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Text(
                    "Thekkady, Kumily,\nKerala 685536, India",
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
                    "Deluxe Room",
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("🛏 Bedroom: 1 large double bed", style: TextStyle(fontSize: width * 0.035)),
                  Text("👤 Capacity: 2 adults", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌲 Forest view from balcony", style: TextStyle(fontSize: width * 0.035)),
                  Text("🛁 Attached modern bathroom", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹4,000 per night",
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
                    "Suite Room",
                    style: TextStyle(
                      fontSize: width * 0.042,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("🛏 Bedroom + Lounge", style: TextStyle(fontSize: width * 0.035)),
                  Text("👥 Capacity: 3 adults or 2+2", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌳 Overlooks Periyar Lake & forest", style: TextStyle(fontSize: width * 0.035)),
                  Text("🛁 Bath tub and antique furniture", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹5,500 per night",
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
                  Text("✔ Located inside Periyar Wildlife Sanctuary", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Guided Forest Treks & Boat Rides", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Multi-cuisine Restaurant", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Eco-friendly Stay Experience", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Free Wi-Fi & Parking", style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
