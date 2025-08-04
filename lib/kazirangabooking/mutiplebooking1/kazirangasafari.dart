import 'package:flutter/material.dart';

class ParkTicketKaziranga2 extends StatefulWidget {
  const ParkTicketKaziranga2({super.key});

  @override
  State<ParkTicketKaziranga2> createState() => _ParkTicketKaziranga2State();
}

class _ParkTicketKaziranga2State extends State<ParkTicketKaziranga2> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Safari',
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jeep Safari',
                style: TextStyle(
                  fontSize: width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: height * 0.02),
              safariCard(
                width,
                height,
                'Up to 6 tourists, 1 guide & 1 driver',
                '4x4 Open Jeep',
                'Indian Citizens: ₹1200 – ₹1500',
                'Foreign Nationals: ₹2000 – ₹2500',
                'Morning: 7:00 AM – 10:00 AM',
                'Evening: 1:30 PM – 3:30 PM',
              ),
              SizedBox(height: height * 0.04),
              Text(
                'Elephant Safari',
                style: TextStyle(
                  fontSize: width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: height * 0.02),
              safariCard(
                width,
                height,
                'Up to 4 tourists + 1 mahout',
                'Elephant',
                'Indian Citizens: ₹1000 – ₹1200',
                'Foreign Nationals: ₹2000 – ₹2500',
                'Morning: 5:30 AM – 7:30 AM',
                'Evening: 3:00 PM – 4:00 PM',
              ),
              SizedBox(height: height * 0.04),
              Text(
                'Boat Safari',
                style: TextStyle(
                  fontSize: width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: height * 0.02),
              safariCard(
                width,
                height,
                'Up to 10 tourists + 1 guide',
                'Motor Boat',
                'Indian Citizens: ₹500 – ₹800',
                'Foreign Nationals: ₹1500 – ₹2000',
                'Morning: 8:00 AM – 10:00 AM',
                'Evening: 2:00 PM – 4:00 PM',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget safariCard(
      double width,
      double height,
      String groupSize,
      String vehicleType,
      String priceIndian,
      String priceForeign,
      String timingMorning,
      String timingEvening,
      ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.04),
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            buildRow(width, Icons.people, 'Group Size:', groupSize),
            SizedBox(height: height * 0.015),
            buildRow(width, Icons.directions_car, 'Vehicle Type:', vehicleType),
            SizedBox(height: height * 0.015),
            buildMultiLineRow(width, Icons.money, 'Ticket Price:', [priceIndian, priceForeign]),
            SizedBox(height: height * 0.015),
            buildMultiLineRow(width, Icons.schedule, 'Timings:', [timingMorning, timingEvening]),
          ],
        ),
      ),
    );
  }

  Widget buildRow(double width, IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.green, size: width * 0.06),
        SizedBox(width: width * 0.02),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
        SizedBox(width: width * 0.02),
        Expanded(child: Text(value, style: TextStyle(fontSize: width * 0.038))),
      ],
    );
  }

  Widget buildMultiLineRow(double width, IconData icon, String label, List<String> values) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: width * 0.06),
        SizedBox(width: width * 0.02),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
        SizedBox(width: width * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values.map((v) => Text(v, style: TextStyle(fontSize: width * 0.038))).toList(),
          ),
        ),
      ],
    );
  }
}
