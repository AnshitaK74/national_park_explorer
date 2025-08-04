import 'package:flutter/material.dart';

class lakepalace extends StatefulWidget {
  const lakepalace({super.key});

  @override
  State<lakepalace> createState() => _lakepalaceState();
}

class _lakepalaceState extends State<lakepalace> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        title:  Text("KTDC Lake Palace", style: TextStyle(
        fontSize: width * 0.05,
        letterSpacing: 1,),


      ),
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
                    borderRadius: BorderRadius.circular(width * 0.04),
                    child: Image.asset(
                      'assets2/images2/img_5.png',
                      fit: BoxFit.cover,
                      height: height * 0.25,
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
                            'assets2/images2/7.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.012),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          child: Image.asset(
                            'assets2/images2/8.jpeg',
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
                    "KTDC Lake Palace, Periyar",
                    style: TextStyle(fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Thekkady, Kumily,\nKerala 685509, India",
                    style: TextStyle(fontSize: width * 0.035),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: height * 0.02),

          Text(
            'Room Details',
            style: TextStyle(fontSize: width * 0.05, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.015),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.035),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Premium Room",
                    style: TextStyle(fontSize: width * 0.042, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.015),
                  Text("🛏 Bedroom: 1 large double bed", style: TextStyle(fontSize: width * 0.035)),
                  Text("👤 Capacity: 2 adults", style: TextStyle(fontSize: width * 0.035)),
                  Text("🏞 View of the Periyar Lake", style: TextStyle(fontSize: width * 0.035)),
                  Text("🛁 Modern bathroom amenities", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹9,500 per night",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.035),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Royal Suite",
                    style: TextStyle(fontSize: width * 0.042, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.015),
                  Text("🛏 Bedroom: King-size bed + sitting area", style: TextStyle(fontSize: width * 0.035)),
                  Text("👥 Capacity: 3 adults or 2+2", style: TextStyle(fontSize: width * 0.035)),
                  Text("🌿 Surrounded by forest and lake", style: TextStyle(fontSize: width * 0.035)),
                  Text("🛁 Wooden interiors with heritage charm", style: TextStyle(fontSize: width * 0.035)),
                  SizedBox(height: height * 0.01),
                  Text(
                    "₹13,500 per night",
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

          SizedBox(height: height * 0.02),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 0.035),
            ),
            child: Padding(
              padding: EdgeInsets.all(width* 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amenities",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: width* 0.04),
                  ),
                  SizedBox(height: height * 0.01),
                  Text("✔ Located inside Periyar Wildlife Sanctuary", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Boat transfer to the hotel", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Forest trekking & wildlife view", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Authentic Kerala cuisine", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Free Wi-Fi & limited parking", style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
