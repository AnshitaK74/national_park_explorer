import 'package:flutter/material.dart';

class Desert3 extends StatefulWidget {
  const Desert3({super.key});

  @override
  State<Desert3> createState() => _Desert3State();
}

class _Desert3State extends State<Desert3> {
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
            image: "assets/images/desertbird.jpeg",
            title: "Bird Watching",
            description:
            "Spot the critically endangered Great Indian Bustard along with eagles, vultures, and migratory birds across the vast desert ecosystem.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/park.jpeg",
            title: "Desert Safari",
            description:
            "Enjoy an exhilarating jeep safari across golden sand dunes and rocky terrain. Witness wildlife adapted to extreme desert conditions.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/sunn.jpeg",
            title: "Dune Sunset",
            description:
            "Experience a magical sunset over the Sam Sand Dunes. The golden light reflecting off the sands offers perfect photo opportunities.",
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
