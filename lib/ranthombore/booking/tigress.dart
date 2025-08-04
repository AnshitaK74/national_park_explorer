import 'package:flutter/material.dart';

class tigress extends StatefulWidget {
  const tigress({super.key});

  @override
  State<tigress> createState() => _tigressState();
}

class _tigressState extends State<tigress> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tigress Resort",
          style: TextStyle(fontSize: 18 * textScale),
        ),
        backgroundColor: Colors.green.shade700,
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
                      'assets2/images2/61.jpeg',
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
                            'assets2/images2/img_4.png',
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
                            'assets2/images2/62.jpeg',
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

          // Address/info card
          _buildInfoCard(
            context,
            title: "Tigress Resort",
            description:
            "Village Khilchipur, Ranthambore,\nRajasthan 322001, India",
          ),

          SizedBox(height: height * 0.03),
          _sectionTitle(context, "Room Details"),

          // Room 1
          _buildRoomCard(
            context,
            title: "Luxury Room",
            price: "₹9,500 per night",
            details: const [
              "🛏 Bedroom: 1 king bed",
              "👤 Capacity: 2 adults",
              "🌄 Private balcony with jungle view",
              "🛁 Modern bathroom with rain shower",
              "🌿 Traditional decor and ambiance",
            ],
          ),

          // Room 2
          _buildRoomCard(
            context,
            title: "Luxury Suite",
            price: "₹13,800 per night",
            details: const [
              "🛏 Bedroom: 1 king + lounge area",
              "👥 Capacity: 3 adults or 2+2",
              "🏞 Garden-facing with veranda",
              "🛁 Bath tub & premium toiletries",
              "🪟 Extra spacious interiors",
            ],
          ),

          SizedBox(height: height * 0.03),
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
            color: Colors.black87),
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
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(width * 0.04)),
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18 * textScale)),
            SizedBox(height: height * 0.01),
            Text(
              description,
              style: TextStyle(
                  fontSize: 14 * textScale,
                  color: Colors.grey.shade800,
                  height: 1.5),
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
      margin: EdgeInsets.symmetric(vertical: height * 0.012),
      child: Padding(
        padding: EdgeInsets.all(width * 0.045),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17 * textScale)),
            SizedBox(height: height * 0.012),
            ...details.map((d) => Padding(
              padding: EdgeInsets.only(bottom: height * 0.006),
              child: Text(d, style: TextStyle(fontSize: 13.5 * textScale)),
            )),
            SizedBox(height: height * 0.015),
            Text(price,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 15 * textScale)),
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
          borderRadius: BorderRadius.circular(width * 0.03)),
      margin: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Amenities",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17 * textScale)),
            SizedBox(height: height * 0.015),
            Text("✔ Jungle Safari Booking",
                style: TextStyle(fontSize: 14 * textScale)),
            Text("✔ Outdoor Swimming Pool",
                style: TextStyle(fontSize: 14 * textScale)),
            Text("✔ Rooftop Dining Experience",
                style: TextStyle(fontSize: 14 * textScale)),
            Text("✔ Ayurvedic Spa & Massage",
                style: TextStyle(fontSize: 14 * textScale)),
            Text("✔ Free Wi-Fi & Parking",
                style: TextStyle(fontSize: 14 * textScale)),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
