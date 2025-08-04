import 'package:flutter/material.dart';

class JimSafariBooking extends StatefulWidget {
  const JimSafariBooking({super.key});

  @override
  State<JimSafariBooking> createState() => _JimSafariBookingState();
}

class _JimSafariBookingState extends State<JimSafariBooking> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Safari',
          style: TextStyle(fontSize: w * 0.05),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(w * 0.04),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jeep Safari',
                style: TextStyle(
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: h * 0.02),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(w * 0.04),
                ),
                elevation: 6,
                child: Padding(
                  padding: EdgeInsets.all(w * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Group Size:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Text('6 Guests + 1 Naturalist + 1 Driver',
                                style: TextStyle(fontSize: w * 0.04)),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        children: [
                          Icon(Icons.car_rental, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Vehicle:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                              child: Text('4x4 Open Gypsy Jeep',
                                  style: TextStyle(fontSize: w * 0.04))),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Price:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('₹1500 – ₹1800 (Indians)',
                                    style: TextStyle(fontSize: w * 0.04)),
                                Text('₹2500 – ₹3000 (Foreign Nationals)',
                                    style: TextStyle(fontSize: w * 0.04)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.lock_clock, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Timings:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Morning – 6:00 AM to 9:00 AM',
                                    style: TextStyle(fontSize: w * 0.04)),
                                Text('Evening – 3:30 PM to 6:30 PM',
                                    style: TextStyle(fontSize: w * 0.04)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.03),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.04),
              Text(
                'Elephant Safari',
                style: TextStyle(
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: h * 0.02),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(w * 0.04),
                ),
                elevation: 6,
                child: Padding(
                  padding: EdgeInsets.all(w * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Group Size:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Text('1 Guest per Elephant + Mahout',
                                style: TextStyle(fontSize: w * 0.04)),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        children: [
                          Icon(Icons.directions_bus, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Mode:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                              child: Text('Elephant Ride',
                                  style: TextStyle(fontSize: w * 0.04))),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Price:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('₹1000 – ₹1200 (Indians)',
                                    style: TextStyle(fontSize: w * 0.04)),
                                Text('₹1800 – ₹2200 (Foreign Nationals)',
                                    style: TextStyle(fontSize: w * 0.04)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.lock_clock, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Timings:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Morning – 7:00 AM to 9:00 AM',
                                    style: TextStyle(fontSize: w * 0.04)),
                                Text('Evening – 4:00 PM to 6:00 PM',
                                    style: TextStyle(fontSize: w * 0.04)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.03),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.04),
              Text(
                'Nature Walk & Cultural Safari',
                style: TextStyle(
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: h * 0.02),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(w * 0.04),
                ),
                elevation: 6,
                child: Padding(
                  padding: EdgeInsets.all(w * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Group Size:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Text('2–10 Guests',
                                style: TextStyle(fontSize: w * 0.04)),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        children: [
                          Icon(Icons.theater_comedy, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Experience:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                              child: Text(
                                  'Nature trail, local culture, crafts & cuisine',
                                  style: TextStyle(fontSize: w * 0.04))),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Price:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('₹400 – ₹600 (Indians)',
                                    style: TextStyle(fontSize: w * 0.04)),
                                Text('₹1000 – ₹1500 (Foreign Nationals)',
                                    style: TextStyle(fontSize: w * 0.04)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.lock_clock, color: Colors.green, size: w * 0.06),
                          SizedBox(width: w * 0.02),
                          Text('Timings:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: w * 0.04)),
                          SizedBox(width: w * 0.02),
                          Expanded(
                            child: Text('Evening – 6:00 PM to 8:00 PM',
                                style: TextStyle(fontSize: w * 0.04)),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.03),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
