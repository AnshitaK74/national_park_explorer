import 'package:flutter/material.dart';

class banjoortolabooking extends StatefulWidget {
  const banjoortolabooking({super.key});

  @override
  State<banjoortolabooking> createState() => _banjoortolabookingState();
}

class _banjoortolabookingState extends State<banjoortolabooking> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Banjoor Tola",
          style: TextStyle(fontSize: 18 * textScale),
        ),
        backgroundColor: Colors.green.shade600,
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
                      'assets2/images2/16.jpeg',
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
                            'assets2/images2/18.jpeg',
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
                            'assets2/images2/img_2.png',
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

          // Lodge Info Card
          _buildInfoCard(
            context,
            title: "Banjoor Tola",
            description:
            "Village Mukki, Tehsil Baihar, District Balaghat,\nMadhya Pradesh 481111, India",
          ),

          SizedBox(height: height * 0.03),

          _sectionTitle(context, "Room Details"),

          _buildRoomCard(
            context,
            title: 'Jungle View Cottage',
            price: '₹3,200 / night',
            details: const [
              '🛏 1 king sized bed',
              '👨‍👩‍👧 2 adults + 1 child',
              '🚿 Attached bathroom',
              '🌄 Private balcony with forest view',
              '❄ AC & Non-AC options',
            ],
          ),

          _buildRoomCard(
            context,
            title: 'Family Cottage',
            price: '₹5,500 / night',
            details: const [
              '🛏 1 king + 2 twin beds',
              '👨‍👩‍👧‍👦 Up to 4 guests',
              '🚿 2 Attached bathrooms',
              '🛌 Extra bed available on request',
            ],
          ),

          SizedBox(height: height * 0.025),
          _buildAmenitiesCard(context),
        ],
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Padding(
      padding: EdgeInsets.only(left: width * 0.02, bottom: width * 0.02),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20 * textScale,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context,
      {required String title, required String description}) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.04),
      ),
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 18 * textScale),
            ),
            SizedBox(height: height * 0.01),
            Text(
              description,
              style: TextStyle(
                fontSize: 14 * textScale,
                color: Colors.grey.shade800,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoomCard(BuildContext context,
      {required String title,
        required String price,
        required List<String> details}) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(width * 0.03)),
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
            SizedBox(height: height * 0.01),
            Text(
              price,
              style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 15 * textScale,
              ),
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
          ],
        ),
      ),
    );
  }

  Widget _buildAmenitiesCard(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Card(
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
              'Amenities',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17 * textScale),
            ),
            SizedBox(height: height * 0.015),
            Text('✔ Free Wi-Fi', style: TextStyle(fontSize: 14 * textScale)),
            Text('✔ Breakfast included',
                style: TextStyle(fontSize: 14 * textScale)),
            Text('✔ 24/7 hot water',
                style: TextStyle(fontSize: 14 * textScale)),
            Text('✔ Bonfire on request',
                style: TextStyle(fontSize: 14 * textScale)),
            Text('✔ Free Walking Safari',
                style: TextStyle(fontSize: 14 * textScale)),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}