import 'package:flutter/material.dart';

class riverview extends StatefulWidget {
  const riverview({super.key});

  @override
  State<riverview> createState() => _riverviewState();
}

class _riverviewState extends State<riverview> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("The River View Retreat"),
        backgroundColor: Colors.green.shade700,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.04),
        children: [
          // Image collage
          SizedBox(
            height: height * 0.26,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets2/images2/44.jpeg',
                      fit: BoxFit.cover,
                      height: double.infinity,
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
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets2/images2/45.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.012),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets2/images2/46.jpeg',
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
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The River View Retreat",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Garjia, Dhikuli, Ramnagar,\nUttarakhand 244715, India",
                    style: TextStyle(fontSize: width * 0.035),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: height * 0.025),

          Text(
            'Room Details',
            style: TextStyle(
                fontSize: width * 0.05, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.015),

          // Deluxe Room Card
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deluxe Room",
                    style: TextStyle(
                        fontSize: width * 0.043,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.015),
                  Text("🛏 Bedroom: 1 king bed"),
                  Text("👤 Capacity: 2 adults"),
                  Text("🌄 Balcony with river view"),
                  Text("🛁 Attached modern bathroom"),
                  Text("🌳 Surrounded by greenery"),
                  SizedBox(height: height * 0.015),
                  Text(
                    "₹7,800 per night",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Cottage Suite Card
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cottage Suite",
                    style: TextStyle(
                        fontSize: width * 0.043,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.015),
                  Text("🛏 Bedroom: 1 king + 1 sofa bed"),
                  Text("👥 Capacity: 3 adults or 2+2"),
                  Text("🌊 Private sit-out near river"),
                  Text("🛁 Spacious bathroom with tub"),
                  Text("🪟 Large windows, nature views"),
                  SizedBox(height: height * 0.015),
                  Text(
                    "₹10,200 per night",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: height * 0.02),

          // Amenities Card
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.043),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("✔ Riverside dining experience"),
                  Text("✔ Swimming pool & gardens"),
                  Text("✔ Nature walks and safaris"),
                  Text("✔ Free Wi-Fi and parking"),
                  Text("✔ Yoga sessions & spa"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
