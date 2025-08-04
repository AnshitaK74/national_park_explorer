import 'package:flutter/material.dart';

class KanhaActivity extends StatefulWidget {
  const KanhaActivity({super.key});

  @override
  State<KanhaActivity> createState() => _KanhaActivityState();
}

class _KanhaActivityState extends State<KanhaActivity> {
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
              Text(
                'Night Patrol',
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
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Group Size:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(child: Text('Up to 6 tourists, 1 guide & 1 driver', style: TextStyle(fontSize: width * 0.038))),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        children: [
                          Icon(Icons.directions_car, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Vehicle Type:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(child: Text('4x4 Open Jeep', style: TextStyle(fontSize: width * 0.038))),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Ticket Price:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Indian Citizens: ₹7000 – ₹11,500', style: TextStyle(fontSize: width * 0.038)),
                                Text('Foreign Nationals: ₹8,500 – ₹13,000', style: TextStyle(fontSize: width * 0.038)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.schedule, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Timings:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Morning: 6:00 AM – 11:00 AM', style: TextStyle(fontSize: width * 0.038)),
                                Text('Evening: 7:30 PM – 10:30 PM', style: TextStyle(fontSize: width * 0.038)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Text(
                'Private Bush Dinner (Max 2 persons)',
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
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Group Size:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(child: Text('Up to 2 tourists, 1 guide & 1 driver', style: TextStyle(fontSize: width * 0.038))),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        children: [
                          Icon(Icons.directions_car, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Vehicle Type:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(child: Text('Private Jeep', style: TextStyle(fontSize: width * 0.038))),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Ticket Price:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Indian Citizens: ₹3000', style: TextStyle(fontSize: width * 0.038)),
                                Text('Foreign Nationals: ₹3000', style: TextStyle(fontSize: width * 0.038)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.schedule, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Timings:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(
                            child: Text('Evening: 7:30 PM – 9:30 PM', style: TextStyle(fontSize: width * 0.038)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Text(
                'Sunset at Bamni Dadar',
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
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Group Size:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(child: Text('Up to 16 tourists, 1 guide & 1 driver', style: TextStyle(fontSize: width * 0.038))),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        children: [
                          Icon(Icons.directions_car, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Vehicle Type:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(child: Text('Canter (Open Mini Bus)', style: TextStyle(fontSize: width * 0.038))),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.money, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Ticket Price:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Indian Citizens: ₹6,500 – ₹7,500', style: TextStyle(fontSize: width * 0.038)),
                                Text('Foreign Nationals: ₹8000 – ₹9,500', style: TextStyle(fontSize: width * 0.038)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.015),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.schedule, color: Colors.green, size: width * 0.06),
                          SizedBox(width: width * 0.02),
                          Text('Timings:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04)),
                          SizedBox(width: width * 0.02),
                          Expanded(
                            child: Text('Evening: 4:00 PM – 6:30 PM', style: TextStyle(fontSize: width * 0.038)),
                          ),
                        ],
                      ),
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
