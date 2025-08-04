import 'package:flutter/material.dart';

class ParkTicketKanha1 extends StatefulWidget {
  const ParkTicketKanha1({super.key});

  @override
  State<ParkTicketKanha1> createState() => _ParkTicketKanha1State();
}

class _ParkTicketKanha1State extends State<ParkTicketKanha1> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double padding = width * 0.04;
    final double cardRadius = width * 0.04;
    final double iconSize = width * 0.06;
    final double spacing = height * 0.015;
    final double titleFont = width * 0.055;
    final double labelFont = width * 0.042;
    final double valueFont = width * 0.038;

    final TextStyle headingStyle = TextStyle(
      fontSize: titleFont,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    );

    final TextStyle labelStyle = TextStyle(
      fontSize: labelFont,
      fontWeight: FontWeight.bold,
    );

    final TextStyle valueStyle = TextStyle(
      fontSize: valueFont,
      color: Colors.black87,
    );

    Widget infoRow(IconData icon, String label, Widget child) {
      return Padding(
        padding: EdgeInsets.only(bottom: spacing),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.green, size: iconSize),
            SizedBox(width: width * 0.025),
            Text(label, style: labelStyle),
            SizedBox(width: width * 0.015),
            Expanded(child: child),
          ],
        ),
      );
    }

    Widget safariCard(String title, List<Widget> info) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: headingStyle),
          SizedBox(height: spacing),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cardRadius),
            ),
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: info,
              ),
            ),
          ),
          SizedBox(height: spacing * 2),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Safari',
          style: TextStyle(fontSize: width * 0.05),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              safariCard("Jeep Safari", [
                infoRow(Icons.people, 'Group Size:',
                    Text('Up to 6 tourists, 1 guide & 1 driver', style: valueStyle)),
                infoRow(Icons.car_rental, 'Vehicle Type:',
                    Text('4x4 Open Jeep', style: valueStyle)),
                infoRow(Icons.money, 'Ticket Price:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Indian Citizens: ₹1000 – ₹1250', style: valueStyle),
                        Text('Foreign Nationals: ₹1300 – ₹1700', style: valueStyle),
                      ],
                    )),
                infoRow(Icons.lock_clock, 'Safari Timings:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Morning: 6:00 AM – 11:00 AM', style: valueStyle),
                        Text('Evening: 3:00 PM – 6:00 PM', style: valueStyle),
                      ],
                    )),
              ]),
              safariCard("Canter Safari", [
                infoRow(Icons.people, 'Group Size:',
                    Text('Up to 16 tourists, 1 guide & 1 driver', style: valueStyle)),
                infoRow(Icons.directions_bus, 'Vehicle Type:',
                    Text('Canter (Open Mini Bus)', style: valueStyle)),
                infoRow(Icons.money, 'Ticket Price:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Indian Citizens: ₹600 – ₹800', style: valueStyle),
                        Text('Foreign Nationals: ₹1000 – ₹1200', style: valueStyle),
                      ],
                    )),
                infoRow(Icons.lock_clock, 'Safari Timings:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Morning: 6:00 AM – 11:00 AM', style: valueStyle),
                        Text('Evening: 3:00 PM – 6:00 PM', style: valueStyle),
                      ],
                    )),
              ]),
              safariCard("Elephant Safari", [
                infoRow(Icons.people, 'Group Size:',
                    Text('Up to 4 tourists + 1 mahout', style: valueStyle)),
                infoRow(Icons.directions_bus, 'Vehicle Type:',
                    Text('Elephant', style: valueStyle)),
                infoRow(Icons.money, 'Ticket Price:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Indian Citizens: ₹1500 – ₹2000', style: valueStyle),
                        Text('Foreign Nationals: ₹2500 – ₹3000', style: valueStyle),
                      ],
                    )),
                infoRow(Icons.lock_clock, 'Safari Timings:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Morning: 6:30 AM – 9:00 AM', style: valueStyle),
                        Text('Evening: 3:30 PM – 5:30 PM', style: valueStyle),
                      ],
                    )),
              ]),
              safariCard("Full Day Safari", [
                infoRow(Icons.people, 'Group Size:',
                    Text('Up to 6 tourists, 1 guide & 1 driver', style: valueStyle)),
                infoRow(Icons.car_rental, 'Vehicle Type:',
                    Text('4x4 Gypsy (Special Permit)', style: valueStyle)),
                infoRow(Icons.money, 'Ticket Price:',
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Indian Citizens: ₹12,000 – ₹15,000', style: valueStyle),
                        Text('Foreign Nationals: ₹18,000 – ₹20,000', style: valueStyle),
                      ],
                    )),
                infoRow(Icons.lock_clock, 'Safari Timings:',
                    Text('6:00 AM – 6:00 PM (Full Day)', style: valueStyle)),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
