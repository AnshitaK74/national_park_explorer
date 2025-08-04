import 'package:flutter/material.dart';

class Satpura3 extends StatefulWidget {
  const Satpura3({super.key});

  @override
  State<Satpura3> createState() => _Satpura3State();
}

class _Satpura3State extends State<Satpura3> {
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
            image: "assets/images/jeep.jpeg",
            title: "Jeep Safari",
            description:
            "Explore Satpura’s rugged terrain and deep valleys in an open jeep. Spot leopards, sloth bears, and barasingha in their natural habitat.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/canoe.jpeg",
            title: "Canoe Safari",
            description:
            "Take a peaceful canoe ride on Denwa River and enjoy close encounters with crocodiles, birds, and lush forest reflections.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/walk.jpeg",
            title: "Walking Safari",
            description:
            "Satpura is one of the few parks in India that allows guided walking safaris. Walk through sal forests and learn about biodiversity up close.",
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
