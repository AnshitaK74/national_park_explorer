import 'package:flutter/material.dart';

class Ranthambore3 extends StatefulWidget {
  const Ranthambore3({super.key});

  @override
  State<Ranthambore3> createState() => _Ranthambore3State();
}

class _Ranthambore3State extends State<Ranthambore3> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: Text(
          "Things To Do",
          style: TextStyle(
            fontSize: width * 0.05,
            letterSpacing: width * 0.0012,
          ),
        ),
        toolbarHeight: height * 0.065,
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.03),
        children: [
          buildCard(
            image: "assets/images/tigersafari.jpeg",
            title: "Tiger Safari",
            description:
            "Explore the dry deciduous forests of Ranthambore in an open jeep to spot Bengal tigers, leopards, sloth bears, and more.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/fort.jpeg",
            title: "Ranthambore Fort",
            description:
            "Visit the historic Ranthambore Fort, a UNESCO World Heritage site, offering panoramic views of the park and ancient architecture.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/talab.jpeg",
            title: "Padam Talab",
            description:
            "Relax near the scenic Padam Talab lake, often frequented by wildlife. Watch for birds, crocodiles, and the beautiful Jogi Mahal nearby.",
            width: width,
            height: height,
          ),
        ],
      ),
    );
  }

  Widget buildCard({
    required String image,
    required String title,
    required String description,
    required double width,
    required double height,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(width * 0.025),
      ),
      margin: EdgeInsets.only(bottom: height * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
            BorderRadius.vertical(top: Radius.circular(width * 0.025)),
            child: Image.asset(
              image,
              height: height * 0.17,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Text(
              title,
              style: TextStyle(
                fontSize: width * 0.048,
                fontWeight: FontWeight.bold,
                letterSpacing: width * 0.001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              width * 0.03,
              0,
              width * 0.03,
              height * 0.008,
            ),
            child: Text(
              description,
              style: TextStyle(
                fontSize: width * 0.04,
                height: 1.35,
                letterSpacing: width * 0.0008,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
