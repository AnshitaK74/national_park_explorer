import 'package:flutter/material.dart';

class deserthaveli extends StatefulWidget {
  const deserthaveli({super.key});

  @override
  State<deserthaveli> createState() => _deserthaveliState();
}

class _deserthaveliState extends State<deserthaveli> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: Text(
          'Desert Haveli Resort',
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 1,
          ),
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
                    borderRadius: BorderRadius.circular(width * 0.03),
                    child: Image.asset(
                      'assets/images/desert.jpeg',
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
                            'assets/images/desert2.jpeg',
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
                            'assets/images/desert3.jpeg',
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
                    'Desert Haveli Resort',
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  Text(
                    'Khaba Road, Jaisalmer,\nRajasthan 345001, India',
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

          _buildRoomCard(
            title: "Heritage Room",
            details: const [
              "🛏 Bedroom: 1 queen bed",
              "👤 Capacity: 2 adults",
              "🚿 Bathroom: Attached with desert view",
              "🪵 Traditional Rajasthani decor",
              "🌀 Ceiling fan & seating area",
            ],
            price: "₹4,000 per night",
            width: width,
            height: height,
          ),

          _buildRoomCard(
            title: "Haveli Suite",
            details: const [
              "🛏 Bedroom: 1 king + 1 single bed",
              "👥 Capacity: 3 people",
              "🚿 Bathroom: Spacious ensuite",
              "❄️ Air-conditioned with desert view",
              "📺 Living area with traditional furniture",
            ],
            price: "₹6,500 per night",
            width: width,
            height: height,
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
                  Text("✔ Free Wi-Fi", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ On-site restaurant", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Camel safari arrangements", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Cultural performances", style: TextStyle(fontSize: width * 0.035)),
                  Text("✔ Rooftop dining", style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoomCard({
    required String title,
    required List<String> details,
    required String price,
    required double width,
    required double height,
  }) {
    return Card(
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
              title,
              style: TextStyle(
                fontSize: width * 0.042,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.01),
            ...details.map(
                  (d) => Padding(
                padding: EdgeInsets.only(bottom: height * 0.007),
                child: Text(
                  d,
                  style: TextStyle(fontSize: width * 0.035),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              price,
              style: TextStyle(
                color: Colors.green,
                fontSize: width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
