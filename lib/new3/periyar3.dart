import 'package:flutter/material.dart';

class Periyar3 extends StatefulWidget {
  const Periyar3({super.key});

  @override
  State<Periyar3> createState() => _Periyar3State();
}

class _Periyar3State extends State<Periyar3> {
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
            image: "assets/images/lake.jpeg",
            title: "Lake Boating",
            description:
            "Enjoy a scenic boat ride on Periyar Lake to view elephants, bison, and birds along the forested shores of the sanctuary.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/boat.jpeg",
            title: "Bamboo Rafting",
            description:
            "Join an adventurous bamboo rafting and trekking program through the rich evergreen forest and spot diverse wildlife.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/img.png",
            title: "Nature Walk",
            description:
            "Explore Periyar’s diverse flora and fauna on a guided forest trek. Learn about medicinal plants and enjoy birdwatching.",
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
