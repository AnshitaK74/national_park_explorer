import 'package:flutter/material.dart';

class PeriyarActivity1 extends StatefulWidget {
  const PeriyarActivity1({super.key});

  @override
  State<PeriyarActivity1> createState() => _PeriyarActivity1State();
}

class _PeriyarActivity1State extends State<PeriyarActivity1> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Activities',
          style: TextStyle(fontSize: w * 0.05),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildActivitySection(
                context,
                title: 'Bamboo Rafting & Trekking',
                groupSize: 'Up to 10 tourists + 2 forest guides',
                vehicle: 'Walking & Bamboo Raft',
                price: ['Indian Citizens: ₹2000', 'Foreign Nationals: ₹3000'],
                timing: ['Full Day: 8:00 AM – 5:00 PM'],
              ),
              SizedBox(height: w * 0.08),
              buildActivitySection(
                context,
                title: 'Nature Walk',
                groupSize: 'Small groups (Max 6) + 1 naturalist',
                vehicle: 'Walking Trail',
                price: ['Indian Citizens: ₹500', 'Foreign Nationals: ₹800'],
                timing: ['Morning: 7:00 AM – 9:00 AM', 'Evening: 3:30 PM – 5:30 PM'],
              ),
              SizedBox(height: w * 0.08),
              buildActivitySection(
                context,
                title: 'Boat Cruise in Periyar Lake',
                groupSize: 'Up to 30 tourists',
                vehicle: 'Motor Boat',
                price: ['Indian Citizens: ₹225', 'Foreign Nationals: ₹300'],
                timing: ['Morning: 7:30 AM / 9:30 AM', 'Evening: 3:30 PM / 5:30 PM'],
              ),
              SizedBox(height: w * 0.08),
              buildActivitySection(
                context,
                title: 'Tribal Heritage Museum Visit',
                groupSize: 'Open entry',
                vehicle: 'Walking',
                price: ['Entry Fee: ₹50'],
                timing: ['Open: 9:00 AM – 5:00 PM'],
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: w * 0.04),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                buildInfoRow(context, Icons.people, 'Group Size:', groupSize),
                SizedBox(height: w * 0.03),
                buildInfoRow(context, Icons.directions_car, 'Vehicle Type:', vehicle),
                SizedBox(height: w * 0.03),
                buildInfoColumn(context, Icons.money, 'Ticket Price:', price),
                SizedBox(height: w * 0.03),
                buildInfoColumn(context, Icons.schedule, 'Timings:', timing),
                SizedBox(height: w * 0.06),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(
      BuildContext context, IconData icon, String label, String value) {
    final w = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: w * 0.06),
        SizedBox(width: w * 0.02),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: w * 0.04,
          ),
        ),
        SizedBox(width: w * 0.02),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: w * 0.04),
          ),
        ),
      ],
    );
  }

  Widget buildInfoColumn(BuildContext context, IconData icon, String label,
      List<String> values) {
    final w = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: w * 0.06),
        SizedBox(width: w * 0.02),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: w * 0.04,
          ),
        ),
        SizedBox(width: w * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values
                .map(
                  (e) => Text(
                e,
                style: TextStyle(fontSize: w * 0.04),
              ),
            )
                .toList(),
          ),
        ),
      ],
    );
  }
}
