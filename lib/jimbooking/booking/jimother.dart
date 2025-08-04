import 'package:flutter/material.dart';

class jim extends StatefulWidget {
  const jim({super.key});

  @override
  State<jim> createState() => _jimState();
}

class _jimState extends State<jim> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Activities',
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 0.5,
          ),
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
                width,
                height,
                title: 'Jungle Camping Experience',
                groupSize: 'Up to 10 tourists + 2 guides',
                vehicle: 'Private Vehicle to campsite',
                price: [
                  'Indian Citizens: ₹2000 – ₹2500',
                  'Foreign Nationals: ₹3000 – ₹3500'
                ],
                timing: ['Check-in: 5:00 PM', 'Check-out: 8:00 AM next day'],
              ),
              SizedBox(height: height * 0.04),
              buildActivitySection(
                width,
                height,
                title: 'Folk Music & Cultural Show',
                groupSize: 'Up to 20 tourists',
                vehicle: 'Walking distance from most lodges',
                price: ['Indian Citizens: ₹500', 'Foreign Nationals: ₹800'],
                timing: ['Evening: 7:00 PM – 8:30 PM'],
              ),
              SizedBox(height: height * 0.04),
              buildActivitySection(
                width,
                height,
                title: 'Night Star Gazing Tour',
                groupSize: 'Small groups (Max 6) + 1 instructor',
                vehicle: 'On Foot',
                price: ['Indian Citizens: ₹800', 'Foreign Nationals: ₹1200'],
                timing: ['Night: 9:00 PM – 10:30 PM'],
              ),
              SizedBox(height: height * 0.04),
              buildActivitySection(
                width,
                height,
                title: 'Local Handicraft Workshop',
                groupSize: 'Up to 8 tourists + 1 artisan',
                vehicle: 'Local Transport / Walking',
                price: ['Indian Citizens: ₹600', 'Foreign Nationals: ₹1000'],
                timing: ['Morning: 10:00 AM – 12:00 PM'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildActivitySection(
      double width,
      double height, {
        required String title,
        required String groupSize,
        required String vehicle,
        required List<String> price,
        required List<String> timing,
      }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: width * 0.055,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: height * 0.02),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.04),
          ),
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(width * 0.04),
            child: Column(
              children: [
                buildInfoRow(width, height, Icons.people, 'Group Size:', groupSize),
                SizedBox(height: height * 0.015),
                buildInfoRow(width, height, Icons.directions_car, 'Vehicle Type:', vehicle),
                SizedBox(height: height * 0.015),
                buildInfoColumn(width, height, Icons.money, 'Ticket Price:', price),
                SizedBox(height: height * 0.015),
                buildInfoColumn(width, height, Icons.schedule, 'Timings:', timing),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(
      double width,
      double height,
      IconData icon,
      String label,
      String value,
      ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: width * 0.06),
        SizedBox(width: width * 0.02),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.04,
          ),
        ),
        SizedBox(width: width * 0.02),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: width * 0.038),
          ),
        ),
      ],
    );
  }

  Widget buildInfoColumn(
      double width,
      double height,
      IconData icon,
      String label,
      List<String> values,
      ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: width * 0.06),
        SizedBox(width: width * 0.02),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.04,
          ),
        ),
        SizedBox(width: width * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values
                .map((e) => Text(
              e,
              style: TextStyle(fontSize: width * 0.038),
            ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
