import 'package:flutter/material.dart';

class Kanha3 extends StatefulWidget {
  const Kanha3({super.key});

  @override
  State<Kanha3> createState() => _Kanha3State();
}

class _Kanha3State extends State<Kanha3> {
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
        toolbarHeight: height * 0.065, // More reduced
      ),
      body: ListView(
        padding: EdgeInsets.all(width * 0.03),
        children: [
          buildCard(
            image: "assets/images/bird.jpeg",
            title: "Bird Watching",
            description:
            "Discover over 300 species of birds in the lush forest of Kanha. From vibrant Indian rollers to majestic eagles, enjoy peaceful birdwatching trails.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/cycle.jpeg",
            title: "Cycle Trail",
            description:
            "Experience the thrill of exploring the Kanha buffer zone on a bicycle. Ride through scenic forest paths, spot wildlife tracks, breathe in the fresh jungle air and connect deeply with nature.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/sun.jpeg",
            title: "Sunset",
            description:
            "Witness a memorable sunset as golden rays fall over the dense forest of Kanha. The tranquil atmosphere and panoramic views make it a perfect spot to relax, reflect and capture nature's beauty.",
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
      margin: EdgeInsets.only(bottom: height * 0.01), // more reduced
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
            BorderRadius.vertical(top: Radius.circular(width * 0.025)),
            child: Image.asset(
              image,
              height: height * 0.17, // more reduced
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
              height * 0.008, // more reduced
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
