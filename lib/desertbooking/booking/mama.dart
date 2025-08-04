import 'package:flutter/material.dart';

class mama extends StatefulWidget {
  const mama({super.key});

  @override
  State<mama> createState() => _mamaState();
}

class _mamaState extends State<mama> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text(
          'Mama Desert Camp',
          style: TextStyle(fontSize: width * 0.05),
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
                      'assets2/images2/img_3.png',
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
                            'assets2/images2/hu.jpeg',
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
                            'assets2/images2/hu.jpeg',
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
                    'Mama Desert Camp',
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    'Sam Sand Dunes, Jaisalmer,\nRajasthan 345001, India',
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
              fontSize: width * 0.048,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.015),
          _buildRoomCard(
            width,
            height,
            'Deluxe Tent',
            '₹3,500 per night',
            [
              '🛏 Bedroom: 1 queen bed',
              '👤 Capacity: 2 adults',
              '🚿 Bathroom: Attached western-style',
              '🏜 Traditional desert décor',
              '🌀 Fan-cooled interior',
            ],
          ),
          _buildRoomCard(
            width,
            height,
            'Luxury Swiss Tent',
            '₹5,200 per night',
            [
              '🛏 Bedroom: 1 king bed',
              '👥 Capacity: 2 adults + 1 child',
              '🚿 Spacious attached bathroom',
              '❄️ Air-conditioned',
              '🎪 Private sit-out area',
            ],
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
                      fontSize: width * 0.042,
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  Text('✔ Cultural dance shows', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Bonfire and music nights', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Camel & jeep safaris', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Traditional Rajasthani meals', style: TextStyle(fontSize: width * 0.035)),
                  Text('✔ Free parking & Wi-Fi', style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoomCard(
      double width,
      double height,
      String title,
      String price,
      List<String> features,
      ) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: height * 0.01),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.03),
      ),
      child: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.042,
                )),
            SizedBox(height: height * 0.015),
            ...features.map(
                  (e) => Padding(
                padding: EdgeInsets.only(bottom: height * 0.006),
                child: Text(
                  e,
                  style: TextStyle(fontSize: width * 0.035),
                ),
              ),
            ),
            SizedBox(height: height * 0.012),
            Text(price,
                style: TextStyle(
                  fontSize: width * 0.038,
                  color: Colors.green.shade800,
                )),
          ],
        ),
      ),
    );
  }
}
