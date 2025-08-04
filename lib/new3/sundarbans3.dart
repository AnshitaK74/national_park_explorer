import 'package:flutter/material.dart';

class Sundarbans3 extends StatefulWidget {
  const Sundarbans3({super.key});

  @override
  State<Sundarbans3> createState() => _Sundarbans3State();
}

class _Sundarbans3State extends State<Sundarbans3> {
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
            image: "assets2/images2/ddd.jpeg",
            title: "Boat Safari",
            description:
            "Cruise through the winding waterways of the Sundarbans on a boat safari to spot Royal Bengal tigers, estuarine crocodiles, and mudskippers.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets2/images2/man.jpeg",
            title: "Mangrove Walk",
            description:
            "Explore the unique mangrove ecosystem on foot. Discover salt-tolerant flora and diverse wildlife adapted to the brackish swampy terrain.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets2/images2/ccc.jpeg",
            title: "Sajnekhali Watchtower",
            description:
            "Visit the Sajnekhali Watchtower for panoramic views of the mangroves and wildlife. A popular spot for birdwatching and crocodile sightings.",
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
