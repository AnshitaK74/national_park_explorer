import 'package:flutter/material.dart';

class ParkTicketKanha extends StatefulWidget {
  const ParkTicketKanha({super.key});

  @override
  State<ParkTicketKanha> createState() => _ParkTicketKanhaState();
}

class _ParkTicketKanhaState extends State<ParkTicketKanha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Safari '),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jeep Safari',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.people, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          'Group Size:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text('Up to 6 tourists, 1 guide & 1 driver'),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(Icons.car_rental, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          'Vehicle Type:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Expanded(child: Text('4x4 Open Jeep')),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.money, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          'Ticket Price:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Indian Citizens: ₹1000 – ₹1250'),
                              Text('Foreign Nationals: ₹1300 – ₹1700'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.lock_clock, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          'Safari Timings:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Morning: 6:00 AM – 11:00 AM'),
                              Text('Evening: 3:00 PM – 6:00 PM'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2E7D32),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
    ]
    )
                    )
                    )

    ]


    )
                    )
      )
    );
  }
}
