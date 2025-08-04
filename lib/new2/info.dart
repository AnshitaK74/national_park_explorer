import 'package:flutter/material.dart';
import 'package:internship/new3/kanha.dart';

class info1 extends StatefulWidget {
  const info1({super.key});

  @override
  State<info1> createState() => _info1State();
}

class _info1State extends State<info1> {
  final List<Map<String, dynamic>> parks = [
    {
      "name": "Kanha National Park",
      "location": "Madhya Pradesh",
      "Type": "Tiger Reserve,National Park",
      "Famous For": "Barasingha,Bengal Tigers",
      "Best Time To visit": "October To June",
      "Description":
      "Kanha is one of India’s beautiful and biodiversity-rich tiger reserves, "
          "known for its sal forests and grassy meadows. It was an inspiration for The Jungle Book.",

      "image": "assets/images/tiger.jpeg"
    },
    {
      "name": "Kaziranga National Park",
      "location": "Assam",
      "Type": "UNESCO World Heritage Site, National Park",
      "Famous For": "One-horned Rhinoceros",
      "Best Time To visit": "November To April",
      "Description":
      "Kaziranga National Park is a UNESCO World Heritage Site, known for its population of the Indian one-horned rhinoceros. It features floodplains, tall elephant grass, and rich wildlife biodiversity.",

      "image": "assets/images/kazi.jpeg"
    },
    {
      "name": "Desert National Park",
      "location": "Rajasthan",
      "Type": "National Park, Desert Ecosystem",
      "Famous For": "Great Indian Bustard",
      "Best Time To visit": "October To March",
      "Description":
      "Desert National Park showcases the unique ecosystem of the Thar Desert. It features sand dunes, sparse grasslands, and is one of the last strongholds of the endangered Great Indian Bustard.",

      "image": "assets/images/deer.jpeg"
    },
    {
      "name": "Jim Corbett National Park",
      "location": "Uttarakhand",
      "Type": "Tiger Reserve, National Park",
      "Famous For": "Royal Bengal Tiger ",
      "Best Time To visit": "November To February",
      "Description":
      "Jim Corbett National Park is India's oldest national park and the first to come under Project Tiger. Known for its rich biodiversity, riverine belts, and hilly terrain, it offers a great chance to spot tigers in the wild.",

      "image": "assets/images/1.jpeg",
    },
    {
      "name": "Ranthambore National Park",
      "location": "Rajasthan",
      "Type": "Tiger Reserve, National Park",
      "Famous For": "Royal Bengal Tigers ",
      "Best Time To visit": "October To April",
      "Description":
      "Ranthambore National Park is one of India's most famous tiger reserves, known for its high tiger density and the picturesque ruins of Ranthambore Fort inside the park. Its dry deciduous forests and grasslands are ideal for wildlife safaris.",

      "image": "assets/images/fox1.jpeg"
    },
    {
      "name": "Periyar National Park",
      "location": "Kerala",
      "Type": "Wildlife Sanctuary, Tiger Reserve",
      "Famous For": "Elephants and Periyar Lake",
      "Best Time To visit": "October To March",
      "Description":
      "Periyar National Park, located in the Western Ghats, is renowned for its scenic beauty and elephant population. The park's centerpiece is Periyar Lake, which offers boat safaris for wildlife viewing.",

      "image": "assets/images/2.jpeg",
    },
    {
      "name": "Satpura National Park",
      "location": "Madhya Pradesh",
      "Type": "Tiger Reserve, National Park",
      "Famous For": "Unique landscape and rich biodiversity",
      "Best Time To visit": "October To April",
      "Description":
      "Satpura National Park is known for its rugged terrain, deep gorges, dense forests, and unique ecosystem. It offers a less-commercialized safari experience with options like walking safaris and canoe rides.",

      "image": "assets/images/3.jpeg",
    },
    {
      "name": "Sundarbans National Park",
      "location": "West Bengal",
      "Type": "UNESCO World Heritage Site, Tiger Reserve",
      "Famous For": "Royal Bengal Tigers,mangrove forests",
      "Best Time To visit": "November To February",
      "Description":
      "Sundarbans National Park is the largest tidal halophytic mangrove forest in the world and a UNESCO World Heritage Site. It is famous for its elusive Royal Bengal Tigers and unique aquatic biodiversity.",

      "image": "assets/images/4.jpeg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final scaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Text(
          'Parks',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 * scaleFactor),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/tiger2.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.04,
                  top: screenHeight * 0.04,
                  child: Icon(Icons.menu, color: Colors.white, size: 28),
                ),
                Positioned(
                  left: screenWidth * 0.04,
                  bottom: screenHeight * 0.06,
                  child: Text(
                    'Explore\nNational Parks',
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade800,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: screenWidth * 0.055,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: parks.length,
                itemBuilder: (context, index) {
                  final park = parks[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => kanha(
                                image: park["image"],
                                name: park["name"],
                                location: park["location"],
                                type: park["Type"],
                                famousfor: park["Famous For"],
                                besttimetovisit: park["Best Time To visit"],
                                Description: park["Description"],
                                wildlifeyoumayspot: park["Wildlife you May Spot"],
                              )));
                    },
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          park["image"]!,
                          width: screenWidth * 0.15,
                          height: screenWidth * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        park["name"]!,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.045),
                      ),
                      subtitle: Text(
                        park["location"]!,
                        style: TextStyle(fontSize: screenWidth * 0.035),
                      ),
                      isThreeLine: true,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}