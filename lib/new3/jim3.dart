import 'package:flutter/material.dart';

class Corbett3 extends StatefulWidget {
  const Corbett3({super.key});

  @override
  State<Corbett3> createState() => _Corbett3State();
}

class _Corbett3State extends State<Corbett3> {
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
            "Embark on a thrilling jeep safari in search of the elusive Bengal tiger along with leopards, elephants, and deer in their natural habitat.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/riverwalk.jpeg",
            title: "River Walk",
            description:
            "Take a peaceful walk along the banks of the Ramganga River. Enjoy scenic views, spot aquatic birds, and soak in the forest atmosphere.",
            width: width,
            height: height,
          ),
          buildCard(
            image: "assets/images/corbett.jpeg",
            title: "Corbett Museum",
            description:
            "Visit the heritage home of Jim Corbett, now a museum showcasing his life, conservation efforts, and the history of the national park.",
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
