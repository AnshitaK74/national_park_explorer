import 'package:flutter/material.dart';

class SafariBooking extends StatefulWidget {
  const SafariBooking({super.key});

  @override
  State<SafariBooking> createState() => _SafariBookingState();
}

class _SafariBookingState extends State<SafariBooking> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Ranthambore Safari',
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
                'Gypsy Safari',
                style: TextStyle(
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: h * 0.02),
              safariCard(
                context,
                groupSize: '6 Guests + 1 Driver',
                vehicle: 'Open Gypsy Vehicle',
                priceIndian: '₹1800 – ₹2200 (Indians)',
                priceForeign: '₹3000 – ₹3500 (Foreign Nationals)',
                timing1: 'Morning – 6:30 AM to 9:30 AM',
                timing2: 'Evening – 2:30 PM to 5:30 PM',
              ),
              SizedBox(height: h * 0.04),
              Text(
                'Canter Safari',
                style: TextStyle(
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: h * 0.02),
              safariCard(
                context,
                groupSize: 'Up to 20 Guests',
                vehicle: 'Canter Safari Bus',
                priceIndian: '₹1200 – ₹1500 (Indians)',
                priceForeign: '₹2200 – ₹2700 (Foreign Nationals)',
                timing1: 'Morning – 6:30 AM to 9:30 AM',
                timing2: 'Evening – 2:30 PM to 5:30 PM',
              ),
              SizedBox(height: h * 0.04),
              Text(
                'Village Eco Walk & Craft Tour',
                style: TextStyle(
                  fontSize: w * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: h * 0.02),
              safariCard(
                context,
                groupSize: '2–12 Guests',
                vehicle: 'Nature walk, local arts & village culture',
                priceIndian: '₹500 – ₹700 (Indians)',
                priceForeign: '₹1000 – ₹1500 (Foreign Nationals)',
                timing1: 'Evening – 5:30 PM to 7:30 PM',
                isExperience: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget safariCard(
      BuildContext context, {
        required String groupSize,
        required String vehicle,
        required String priceIndian,
        required String priceForeign,
        required String timing1,
        String? timing2,
        bool isExperience = false,
      }) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Card(
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
                        fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                SizedBox(width: w * 0.02),
                Expanded(
                    child: Text(groupSize, style: TextStyle(fontSize: w * 0.04))),
              ],
            ),
            SizedBox(height: h * 0.015),
            Row(
              children: [
                Icon(isExperience ? Icons.landscape : Icons.car_rental,
                    color: Colors.green, size: w * 0.06),
                SizedBox(width: w * 0.02),
                Text(isExperience ? 'Experience:' : 'Vehicle:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                SizedBox(width: w * 0.02),
                Expanded(
                    child: Text(vehicle, style: TextStyle(fontSize: w * 0.04))),
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
                        fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                SizedBox(width: w * 0.02),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(priceIndian, style: TextStyle(fontSize: w * 0.04)),
                      Text(priceForeign, style: TextStyle(fontSize: w * 0.04)),
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
                        fontWeight: FontWeight.bold, fontSize: w * 0.04)),
                SizedBox(width: w * 0.02),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(timing1, style: TextStyle(fontSize: w * 0.04)),
                      if (timing2 != null)
                        Text(timing2, style: TextStyle(fontSize: w * 0.04)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.03),
          ],
        ),
      ),
    );
  }
}
