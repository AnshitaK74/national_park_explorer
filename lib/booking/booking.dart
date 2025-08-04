import 'package:flutter/material.dart';
import 'package:internship/booking/kanhabooking.dart';
import 'package:internship/desertbooking/booking/desertbooking.dart';
import 'package:internship/jimbooking/booking/jim booking.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/kazirangabooking.dart';
import 'package:internship/peiyar/booking/hotels.dart';
import 'package:internship/ranthombore/booking/ranthombore booking.dart';
import 'package:internship/satpura/hotels.dart';
import 'package:internship/sundarbans/hotels.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    double cardWidth = width * 0.42;
    double cardHeight = height * 0.18;
    double padding = width * 0.03;
    double spacing = height * 0.02;
    double textSize = width * 0.038;
    double buttonFont = width * 0.035;

    Widget buildParkCard(String title, VoidCallback onPressed) {
      return SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: onPressed,
                  child: Text('Click', style: TextStyle(fontSize: buttonFont)),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Info",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.05,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: spacing),
          child: Column(
            children: [
              SizedBox(height: spacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildParkCard('Kanha Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => kanhabooking()));
                  }),
                  buildParkCard('Kaziranga Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => KazirangaBooking()));
                  }),
                ],
              ),
              SizedBox(height: spacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildParkCard('Desert Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DesertParkBooking()));
                  }),
                  buildParkCard('Jim Corbett Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JimParkBooking()));
                  }),
                ],
              ),
              SizedBox(height: spacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildParkCard('Ranthombore Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RanthomboreParkBooking()));
                  }),
                  buildParkCard('Periyar Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => periyarbooking()));
                  }),
                ],
              ),
              SizedBox(height: spacing),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildParkCard('Satpura Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SatpuraParkBooking1q()));
                  }),
                  buildParkCard('Sundarbans Park', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SundarbanParkBooking()));
                  }),
                ],
              ),
              SizedBox(height: spacing),
            ],
          ),
        ),
      ),
    );
  }
}
