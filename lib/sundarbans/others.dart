import 'package:flutter/material.dart';

class SundarbansActivitiesx extends StatefulWidget {
  const SundarbansActivitiesx({super.key});

  @override
  State<SundarbansActivitiesx> createState() => _SundarbansActivitiesxState();
}

class _SundarbansActivitiesxState extends State<SundarbansActivitiesx> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text('Activities', style: TextStyle(fontSize: w * 0.05)),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(w * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildActivitySection(
                context,
                title: 'Mangrove Forest Boat Safari',
                groupSize: 'Up to 8 tourists + 1 guide',
                vehicle: 'Motorized Boat',
                price: ['Indian Citizens: ₹1800', 'Foreign Nationals: ₹2500'],
                timing: ['Morning: 6:00 AM – 9:00 AM', 'Afternoon: 3:00 PM – 6:00 PM'],
              ),
              SizedBox(height: h * 0.04),
              buildActivitySection(
                context,
                title: 'Bird Watching at Sajnekhali',
                groupSize: 'Small groups up to 6',
                vehicle: 'Walking + Watch Tower',
                price: ['Indian Citizens: ₹600', 'Foreign Nationals: ₹900'],
                timing: ['Morning: 7:00 AM – 8:30 AM'],
              ),
              SizedBox(height: h * 0.04),
              buildActivitySection(
                context,
                title: 'Village Walk and Cultural Interaction',
                groupSize: 'Up to 10 tourists',
                vehicle: 'On Foot or Cycle',
                price: ['Indian Citizens: ₹500', 'Foreign Nationals: ₹800'],
                timing: ['Evening: 4:30 PM – 6:00 PM'],
              ),
              SizedBox(height: h * 0.04),
              buildActivitySection(
                context,
                title: 'Night Theatre: Local Folklore & Baul Songs',
                groupSize: 'Open seating (max 30)',
                vehicle: 'At Resort Amphitheatre',
                price: ['All Visitors: ₹700 per person'],
                timing: ['Night: 7:00 PM – 8:30 PM'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildActivitySection(
      BuildContext context, {
        required String title,
        required String groupSize,
        required String vehicle,
        required List<String> price,
        required List<String> timing,
      }) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.055,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: h * 0.02),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(w * 0.04),
          ),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(w * 0.04),
            child: Column(
              children: [
                buildInfoRow(context, Icons.people, 'Group Size:', groupSize),
                SizedBox(height: h * 0.015),
                buildInfoRow(context, Icons.directions_boat, 'Vehicle Type:', vehicle),
                SizedBox(height: h * 0.015),
                buildInfoColumn(context, Icons.money, 'Ticket Price:', price),
                SizedBox(height: h * 0.015),
                buildInfoColumn(context, Icons.schedule, 'Timings:', timing),
                SizedBox(height: h * 0.03),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(BuildContext context, IconData icon, String label, String value) {
    final w = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: w * 0.05),
        SizedBox(width: w * 0.02),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.04)),
        SizedBox(width: w * 0.02),
        Expanded(child: Text(value, style: TextStyle(fontSize: w * 0.04))),
      ],
    );
  }

  Widget buildInfoColumn(BuildContext context, IconData icon, String label, List<String> values) {
    final w = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: w * 0.05),
        SizedBox(width: w * 0.02),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.04)),
        SizedBox(width: w * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values.map((e) => Text(e, style: TextStyle(fontSize: w * 0.04))).toList(),
          ),
        ),
      ],
    );
  }
}
