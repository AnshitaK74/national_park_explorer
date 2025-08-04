import 'package:flutter/material.dart';

class SatpuraActivities extends StatefulWidget {
  const SatpuraActivities({super.key});

  @override
  State<SatpuraActivities> createState() => _SatpuraActivitiesState();
}

class _SatpuraActivitiesState extends State<SatpuraActivities> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

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
          padding: EdgeInsets.all(w * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildActivitySection(
                context,
                title: 'Denwa River Canoe Safari',
                groupSize: 'Up to 4 tourists + 1 guide',
                vehicle: 'Canoe (Paddle only)',
                price: ['Indian Citizens: ₹1500', 'Foreign Nationals: ₹2100'],
                timing: ['Morning: 6:30 AM – 8:00 AM', 'Evening: 4:30 PM – 6:00 PM'],
              ),
              SizedBox(height: h * 0.04),
              buildActivitySection(
                context,
                title: 'Satpura Night Safari',
                groupSize: 'Max 6 tourists + 1 guide + 1 driver',
                vehicle: 'Open Gypsy with spotlight',
                price: ['Indian Citizens: ₹2200', 'Foreign Nationals: ₹3000'],
                timing: ['Night: 7:00 PM – 9:30 PM'],
              ),
              SizedBox(height: h * 0.04),
              buildActivitySection(
                context,
                title: 'Madai Village and Handloom Visit',
                groupSize: 'Up to 10 tourists',
                vehicle: 'Cycle or Jeep Ride',
                price: ['Indian Citizens: ₹700', 'Foreign Nationals: ₹1100'],
                timing: ['Morning: 9:00 AM – 11:00 AM'],
              ),
              SizedBox(height: h * 0.04),
              buildActivitySection(
                context,
                title: 'Satpura Nature Trail Walk',
                groupSize: 'Small groups (Max 5) + 1 naturalist',
                vehicle: 'On Foot',
                price: ['Indian Citizens: ₹900', 'Foreign Nationals: ₹1300'],
                timing: ['Morning: 6:30 AM – 8:30 AM'],
              ),
              SizedBox(height: h * 0.04),
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
                buildInfoRow(Icons.people, 'Group Size:', groupSize, w, h),
                SizedBox(height: h * 0.015),
                buildInfoRow(Icons.directions_car, 'Vehicle Type:', vehicle, w, h),
                SizedBox(height: h * 0.015),
                buildInfoColumn(Icons.money, 'Ticket Price:', price, w, h),
                SizedBox(height: h * 0.015),
                buildInfoColumn(Icons.schedule, 'Timings:', timing, w, h),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(
      IconData icon, String label, String value, double w, double h) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: w * 0.06),
        SizedBox(width: w * 0.025),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: w * 0.042,
          ),
        ),
        SizedBox(width: w * 0.02),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: w * 0.042),
          ),
        ),
      ],
    );
  }

  Widget buildInfoColumn(IconData icon, String label, List<String> values,
      double w, double h) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: w * 0.06),
        SizedBox(width: w * 0.025),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: w * 0.042,
          ),
        ),
        SizedBox(width: w * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values
                .map((e) => Text(e, style: TextStyle(fontSize: w * 0.042)))
                .toList(),
          ),
        ),
      ],
    );
  }
}
