import 'package:flutter/material.dart';

class DesertSafariBooking extends StatefulWidget {
  const DesertSafariBooking({super.key});

  @override
  State<DesertSafariBooking> createState() => _DesertSafariBookingState();
}

class _DesertSafariBookingState extends State<DesertSafariBooking> {
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
              safariTitle('Jeep Safari', width),
              SizedBox(height: height * 0.02),
              safariCard(
                width,
                height,
                '6 Guests + 1 Naturalist + 1 Driver',
                '4x4 Open Gypsy Jeep',
                '₹1500 – ₹1800 (Indians)',
                '₹2500 – ₹3000 (Foreign Nationals)',
                'Morning – 6:00 AM to 9:00 AM',
                'Evening – 3:30 PM to 6:30 PM',
                Icons.car_rental,
              ),
              SizedBox(height: height * 0.04),
              safariTitle('Camel Safari', width),
              SizedBox(height: height * 0.02),
              safariCard(
                width,
                height,
                '1 Guest per Camel + Local Guide',
                'Camel Ride',
                '₹800 – ₹1000 (Indians)',
                '₹1500 – ₹2000 (Foreign Nationals)',
                'Morning – 7:00 AM to 9:00 AM',
                'Evening – 4:00 PM to 6:00 PM',
                Icons.directions_bus,
              ),
              SizedBox(height: height * 0.04),
              safariTitle('Cultural Safari', width),
              SizedBox(height: height * 0.02),
              safariCard(
                width,
                height,
                '2–10 Guests',
                'Traditional Dance, Music & Village Tour',
                '₹400 – ₹600 (Indians)',
                '₹1000 – ₹1500 (Foreign Nationals)',
                '',
                'Evening – 6:00 PM to 8:00 PM',
                Icons.theater_comedy,
              ),
              SizedBox(height: height * 0.04),
            ],
          ),
        ),
      ),
    );
  }

  Widget safariTitle(String title, double width) {
    return Text(
      title,
      style: TextStyle(
        fontSize: width * 0.055,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget safariCard(
      double width,
      double height,
      String groupSize,
      String vehicleOrMode,
      String priceIndian,
      String priceForeign,
      String timingMorning,
      String timingEvening,
      IconData vehicleIcon,
      ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.04),
      ),
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            buildRow(width, Icons.people, 'Group Size:', groupSize),
            SizedBox(height: height * 0.015),
            buildRow(width, vehicleIcon, 'Mode/Vehicle:', vehicleOrMode),
            SizedBox(height: height * 0.015),
            buildMultiLineRow(width, Icons.money, 'Price:', [priceIndian, priceForeign]),
            SizedBox(height: height * 0.015),
            if (timingMorning.isNotEmpty || timingEvening.isNotEmpty)
              buildMultiLineRow(width, Icons.lock_clock, 'Timings:', [
                if (timingMorning.isNotEmpty) timingMorning,
                if (timingEvening.isNotEmpty) timingEvening,
              ]),
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
