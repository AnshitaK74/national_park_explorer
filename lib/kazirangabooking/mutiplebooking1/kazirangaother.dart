import 'package:flutter/material.dart';

class KazirangaActivity1 extends StatefulWidget {
  const KazirangaActivity1({super.key});

  @override
  State<KazirangaActivity1> createState() => _KazirangaActivity1State();
}

class _KazirangaActivity1State extends State<KazirangaActivity1> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Activities',
          style: TextStyle(fontSize: width * 0.05, letterSpacing: 1),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildActivitySection(
                title: 'Tribal Village Tour',
                groupSize: 'Up to 8 tourists + 1 local guide',
                vehicle: 'Private Vehicle / Walking',
                price: ['Indian Citizens: ₹1000 – ₹1500', 'Foreign Nationals: ₹1500 – ₹2000'],
                timing: ['Morning: 9:00 AM – 12:00 PM', 'Evening: 3:00 PM – 5:00 PM'],
                width: width,
              ),
              SizedBox(height: height * 0.04),
              buildActivitySection(
                title: 'Tea Garden Visit',
                groupSize: 'Up to 10 tourists + 1 guide',
                vehicle: 'Private Jeep or Car',
                price: ['Indian Citizens: ₹800', 'Foreign Nationals: ₹1200'],
                timing: ['Morning: 10:00 AM – 12:00 PM', 'Evening: 2:00 PM – 4:00 PM'],
                width: width,
              ),
              SizedBox(height: height * 0.04),
              buildActivitySection(
                title: 'Brahmaputra River Boating',
                groupSize: 'Up to 12 tourists + 2 crew',
                vehicle: 'Motor Boat',
                price: ['Indian Citizens: ₹1200 – ₹1800', 'Foreign Nationals: ₹1800 – ₹2500'],
                timing: ['Morning: 8:00 AM – 10:00 AM', 'Evening: 4:00 PM – 6:00 PM'],
                width: width,
              ),
              SizedBox(height: height * 0.04),
              buildActivitySection(
                title: 'Bird Watching Trail',
                groupSize: 'Small groups (Max 6) + 1 naturalist',
                vehicle: 'On Foot / Walking Trail',
                price: ['Indian Citizens: ₹500', 'Foreign Nationals: ₹800'],
                timing: ['Morning: 6:00 AM – 8:00 AM'],
                width: width,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildActivitySection({
    required String title,
    required String groupSize,
    required String vehicle,
    required List<String> price,
    required List<String> timing,
    required double width,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: width * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1,
          ),
        ),
        SizedBox(height: width * 0.04),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.04),
          ),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(width * 0.04),
            child: Column(
              children: [
                buildInfoRow(Icons.people, 'Group Size:', groupSize, width),
                SizedBox(height: width * 0.03),
                buildInfoRow(Icons.directions_car, 'Vehicle Type:', vehicle, width),
                SizedBox(height: width * 0.03),
                buildInfoColumn(Icons.money, 'Ticket Price:', price, width),
                SizedBox(height: width * 0.03),
                buildInfoColumn(Icons.schedule, 'Timings:', timing, width),
                SizedBox(height: width * 0.06),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(IconData icon, String label, String value, double width) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: width * 0.06),
        SizedBox(width: width * 0.02),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.038)),
        SizedBox(width: width * 0.02),
        Expanded(child: Text(value, style: TextStyle(fontSize: width * 0.037))),
      ],
    );
  }

  Widget buildInfoColumn(IconData icon, String label, List<String> values, double width) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: width * 0.06),
        SizedBox(width: width * 0.02),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.038)),
        SizedBox(width: width * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values.map((e) => Text(e, style: TextStyle(fontSize: width * 0.037))).toList(),
          ),
        ),
      ],
    );
  }
}
