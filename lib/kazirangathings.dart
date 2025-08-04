import 'package:flutter/material.dart';

class Kaziranga4 extends StatefulWidget {
  const Kaziranga4({super.key});

  @override
  State<Kaziranga4> createState() => _Kaziranga4State();
}

class _Kaziranga4State extends State<Kaziranga4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
        title: const Text("Things To Do in Kaziranga"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          buildCard(
            image: "assets2/images2/aaa.jpeg",
            title: "Elephant Safari",
            description:
            "Explore the grasslands of Kaziranga on an early morning elephant safari. Get up close with rhinos, deer, and wild buffalo in their natural habitat.",
          ),
          buildCard(
            image: "assets2/images2/bbb.jpeg",
            title: "Jeep Safari",
            description:
            "Enjoy an adventurous jeep ride through Kaziranga’s core zones. Spot diverse wildlife like tigers, elephants, and swamp deer across the park’s varied terrains.",
          ),
          buildCard(
            image: "assets/images/bird.jpeg",
            title: "Bird Watching",
            description:
            "Kaziranga is home to over 480 bird species. From pelicans to hornbills, enjoy serene birding trails along wetlands and forest edges.",
          ),
        ],
      ),
    );
  }

  Widget buildCard({
    required String image,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
