import 'package:flutter/material.dart';

class SafariBookingzz extends StatefulWidget {
  const SafariBookingzz({super.key});

  @override
  State<SafariBookingzz> createState() => _SafariBookingzzState();
}

class _SafariBookingzzState extends State<SafariBookingzz> {
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
                '6–20 Guests + Guide + Crew',
                'Motorized Safari Boat',
                ['₹2000 – ₹3000 per person', 'Varies with boat type and duration'],
                ['Half Day: 6:00 AM – 12:00 PM', 'Full Day: 6:00 AM – 5:00 PM'],
              ),
              SizedBox(height: sectionSpacing),
              Text(
                'Watch Tower Safari',
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
                'Views of wildlife from Sudhanyakhali, Dobanki, and Sajnekhali watchtowers',
                'Royal Bengal Tiger, Crocodiles, Deer, Birds',
                [],
                ['1 to 2 hours per tower'],
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
              isWatchTower ? 'Wildlife:' : 'Vehicle:',
              line2,
              iconSize,
              labelFontSize,
              valueFontSize,
            ),
            if (!isWatchTower) ...[
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
              isWatchTower ? 'Duration:' : 'Timings:',
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