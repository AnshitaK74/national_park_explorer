import 'package:flutter/material.dart';
import 'package:internship/kazirangathings.dart';
import 'package:internship/new3/desert3.dart';
import 'package:internship/new3/jim3.dart';
import 'package:internship/new3/kanha3.dart';
import 'package:internship/new3/kazrianga3.dart';
import 'package:internship/new3/periyar3.dart';
import 'package:internship/new3/rantambore3.dart';
import 'package:internship/new3/satpura3.dart';
import 'package:internship/new3/sundarbans3.dart';

class parkactivity100 extends StatefulWidget {
  const parkactivity100({super.key});

  @override
  State<parkactivity100> createState() => _parkactivity100State();
}

class _parkactivity100State extends State<parkactivity100> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double height = screenSize.height;
    final double width = screenSize.width;

    final double cardMargin = width * 0.04;
    final double borderRadius = width * 0.03;
    final double imageHeight = height * 0.25;
    final double imageWidth = width; // Full width
    final double textPadding = width * 0.04;
    final double fontSize = width * 0.045;
    final double spacing = height * 0.015;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Things To Do',
          style: TextStyle(fontSize: width * 0.05),
        ),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCard(
              context,
              title: 'Kanha Activities',
              imagePath: 'assets2/images2/aaa.jpeg',
              destination: const Kanha3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Kaziranga Activities',
              imagePath: 'assets/images/tigersafari.jpeg',
              destination: const Kaziranga3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Desert Activities',
              imagePath: 'assets/images/fort.jpeg',
              destination: const Desert3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Jim Corbett Activities',
              imagePath: 'assets/images/tigersafari.jpeg',
              destination: const Corbett3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Ranthombore Activities',
              imagePath: 'assets/images/talab.jpeg',
              destination: const Ranthambore3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Periyar Activities',
              imagePath: 'assets/images/tigersafari.jpeg',
              destination: const Periyar3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Satpura Activities',
              imagePath: 'assets2/images2/ddd.jpeg',
              destination: const Satpura3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
            buildCard(
              context,
              title: 'Sundarbans Activities',
              imagePath: 'assets/images/riverwalk.jpeg',
              destination: const Sundarbans3(),
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              borderRadius: borderRadius,
              fontSize: fontSize,
              textPadding: textPadding,
              cardMargin: cardMargin,
              spacing: spacing,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(
      BuildContext context, {
        required String title,
        required String imagePath,
        required Widget destination,
        required double imageHeight,
        required double imageWidth,
        required double borderRadius,
        required double fontSize,
        required double textPadding,
        required double cardMargin,
        required double spacing,
      }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destination));
      },
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(cardMargin),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
              BorderRadius.vertical(top: Radius.circular(borderRadius)),
              child: Image.asset(
                imagePath,
                height: imageHeight,
                width: imageWidth,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: spacing),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: textPadding),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: spacing),
          ],
        ),
      ),
    );
  }
}
