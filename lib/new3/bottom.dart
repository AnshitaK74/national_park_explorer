import 'package:flutter/material.dart';
import 'package:internship/booking/booking.dart';
import 'package:internship/new2/info.dart';
import 'package:internship/new2/parkactivity.dart';
import 'package:internship/new3/account.dart';

import 'package:internship/new3/parkchoose.dart'; // Activities screen

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectedIndex = 0;

  final List<Widget> numftabs = [
    info1(), // Home screen
  parkactivity100(),// A,
    Booking(),// ctivities screen
    AccountScreen()
  ];

  void onItemClick(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: numftabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemClick,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Activities'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),

        ],
      ),
    );
  }
}
