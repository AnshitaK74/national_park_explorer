
import 'package:flutter/material.dart';

class NationalParkGrid extends StatelessWidget {
  const NationalParkGrid ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kanha National Park"),
        backgroundColor: Colors.green.shade700,
        // Back arrow (automatically works if this page is pushed via Navigator)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Goes back to NationalParksGrid
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome to Kanha National Park',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Kanha National Park is one of the largest and most well-maintained national parks in India. '
                  'Famous for its population of Bengal tigers, leopards, sloth bears, and barasingha, the park is a haven for wildlife enthusiasts.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Timings: 6:00 AM – 11:00 AM and 3:00 PM – 6:00 PM\n'
                  'Best Time to Visit: October to June',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 16),
            Text(
              'You can explore jeep safaris, nature walks, and local eco-tourism around the area.',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
