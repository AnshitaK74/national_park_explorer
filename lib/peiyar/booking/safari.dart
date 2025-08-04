import 'package:flutter/material.dart';

class PeriyarSafar extends StatefulWidget {
  const PeriyarSafar({super.key});

  @override
  State<PeriyarSafar> createState() => _PeriyarSafarState();
}

class _PeriyarSafarState extends State<PeriyarSafar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final titleFontSize = width * 0.055;
    final labelFontSize = width * 0.042;
    final valueFontSize = width * 0.038;
    final iconSize = width * 0.06;
    final sectionSpacing = height * 0.04;
    final cardSpacing = height * 0.02;
    final paddingAll = width * 0.04;
    final borderRadius = width * 0.04;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Safari',
          style: TextStyle(
            fontSize: width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(paddingAll),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Boat Safari',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: cardSpacing),
              buildSafariCard(
                iconSize,
                labelFontSize,
                valueFontSize,
                borderRadius,
                paddingAll,
                '20–30 Guests + Forest Guide',
                'Motorized Bamboo Rafts',
                ['₹700 – ₹2250 per person', 'Depends on season and duration'],
                ['7:30 AM – 9:30 AM', '10:30 AM – 12:30 PM', '1:45 PM – 3:45 PM'],
              ),
              SizedBox(height: sectionSpacing),
              Text(
                'Bamboo Rafting Safari',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: cardSpacing),
              buildSafariCard(
                iconSize,
                labelFontSize,
                valueFontSize,
                borderRadius,
                paddingAll,
                'Combination of trekking and rafting through Periyar Tiger Reserve',
                'Tigers, Elephants, Nilgiri Langurs, Gaur, Birds',
                ['₹2000 – ₹3500 per person'],
                ['7:00 AM – 5:00 PM'],
              ),
              SizedBox(height: sectionSpacing),
              Text(
                'Nature Walk',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: cardSpacing),
              buildSafariCard(
                iconSize,
                labelFontSize,
                valueFontSize,
                borderRadius,
                paddingAll,
                'Small groups of 6 with a tribal guide',
                'On foot through forest trails',
                ['₹600 – ₹1000 per person'],
                ['7:00 AM – 10:30 AM', '2:00 PM – 5:00 PM'],
                isWatchTower: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSafariCard(
      double iconSize,
      double labelFontSize,
      double valueFontSize,
      double borderRadius,
      double paddingAll,
      String line1,
      String line2,
      List<String> prices,
      List<String> timings, {
        bool isWatchTower = false,
      }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.all(paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildRow(
              isWatchTower ? Icons.visibility : Icons.people,
              isWatchTower ? 'Highlights:' : 'Group Size:',
              line1,
              iconSize,
              labelFontSize,
              valueFontSize,
            ),
            SizedBox(height: 12),
            buildRow(
              isWatchTower ? Icons.eco : Icons.directions_boat,
              isWatchTower ? 'Activity:' : 'Vehicle:',
              line2,
              iconSize,
              labelFontSize,
              valueFontSize,
            ),
            if (prices.isNotEmpty) ...[
              SizedBox(height: 12),
              buildColumn(
                Icons.money,
                'Price:',
                prices,
                iconSize,
                labelFontSize,
                valueFontSize,
              ),
            ],
            SizedBox(height: 12),
            buildColumn(
              isWatchTower ? Icons.access_time : Icons.lock_clock,
              isWatchTower ? 'Timings:' : 'Timings:',
              timings,
              iconSize,
              labelFontSize,
              valueFontSize,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget buildRow(IconData icon, String label, String value, double iconSize,
      double labelFontSize, double valueFontSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: iconSize),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: labelFontSize),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: valueFontSize),
          ),
        ),
      ],
    );
  }

  Widget buildColumn(IconData icon, String label, List<String> values,
      double iconSize, double labelFontSize, double valueFontSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: iconSize),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: labelFontSize),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: values
                .map((e) => Text(
              e,
              style: TextStyle(fontSize: valueFontSize),
            ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
