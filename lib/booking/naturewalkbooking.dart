import 'package:flutter/material.dart';
class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text('Activities Booking'),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nature Walk',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 6,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.people, color: Colors.green),
                    SizedBox(width: 8),
                    Text('Group Size:',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Expanded(
                    child: Text('Any no of people'),
                    )

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
                          Text('Indian Citizens: ₹300 – ₹500'),
                          Text('Foreign Nationals: ₹700 – ₹900'),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.people, color: Colors.green),
                    SizedBox(width: 8),
                    Text('Timing:',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Morning: 6:30 AM – 9:00 AM'),
                          Text('Evening: 4:30 PM – 6:30 PM'),
                        ],
                      ),
                    ),

                  ],
                ),


              ],
            ),
          )


        ],
      ),

    );
  }
}
