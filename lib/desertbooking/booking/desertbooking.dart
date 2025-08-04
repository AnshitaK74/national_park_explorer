import 'package:flutter/material.dart';
import 'package:internship/booking/cantersafari.dart';
import 'package:internship/booking/kanhabooking2.dart';
import 'package:internship/booking/kanhacativitybokking.dart';
import 'package:internship/booking/parkticketbooking.dart';
import 'package:internship/desertbooking/booking/deserthotels.dart';
import 'package:internship/desertbooking/booking/desertother.dart';
import 'package:internship/desertbooking/booking/desertsafari.dart';

class DesertParkBooking extends StatefulWidget {
  const DesertParkBooking({super.key});

  @override
  State<DesertParkBooking> createState() => _DesertParkBookingState();
}

class _DesertParkBookingState extends State<DesertParkBooking> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    final imageHeight = h * 0.18;
    final titleFontSize = w * 0.038;
    final buttonFontSize = w * 0.032;
    final cardPaddingH = w * 0.03;
    final buttonPaddingH = w * 0.045;
    final buttonPaddingV = h * 0.009;
    final cardBorderRadius = w * 0.035;
    final imageBorderRadius = w * 0.035;
    final verticalSpacingSmall = h * 0.008;
    final verticalSpacingMedium = h * 0.012;
    final horizontalTextPadding = w * 0.035;
    final cardBottomMargin = h * 0.022;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Desert Park',
          style: TextStyle(fontSize: w * 0.05, letterSpacing: 1),
        ),
        backgroundColor: const Color(0xFF2E7D32),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: cardPaddingH, vertical: cardPaddingH),
          child: Column(
            children: [
              buildBookingCard(
                imagePath: 'assets2/images2/img_1.png',
                title: 'Hotel',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DesertBookingHotel()));
                },
                imageHeight: imageHeight,
                titleFontSize: titleFontSize,
                buttonFontSize: buttonFontSize,
                buttonPaddingH: buttonPaddingH,
                buttonPaddingV: buttonPaddingV,
                borderRadius: cardBorderRadius,
                imageRadius: imageBorderRadius,
                verticalSpacingSmall: verticalSpacingSmall,
                verticalSpacingMedium: verticalSpacingMedium,
                horizontalTextPadding: horizontalTextPadding,
                bottomMargin: cardBottomMargin,
              ),
              buildBookingCard(
                imagePath: 'assets2/images2/u.jpeg',
                title: 'Safari',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DesertSafariBooking()));
                },
                imageHeight: imageHeight,
                titleFontSize: titleFontSize,
                buttonFontSize: buttonFontSize,
                buttonPaddingH: buttonPaddingH,
                buttonPaddingV: buttonPaddingV,
                borderRadius: cardBorderRadius,
                imageRadius: imageBorderRadius,
                verticalSpacingSmall: verticalSpacingSmall,
                verticalSpacingMedium: verticalSpacingMedium,
                horizontalTextPadding: horizontalTextPadding,
                bottomMargin: cardBottomMargin,
              ),
              buildBookingCard(
                imagePath: 'assets2/images2/v.jpeg',
                title: 'Other Activities',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DesertParkActivity()));
                },
                imageHeight: imageHeight,
                titleFontSize: titleFontSize,
                buttonFontSize: buttonFontSize,
                buttonPaddingH: buttonPaddingH,
                buttonPaddingV: buttonPaddingV,
                borderRadius: cardBorderRadius,
                imageRadius: imageBorderRadius,
                verticalSpacingSmall: verticalSpacingSmall,
                verticalSpacingMedium: verticalSpacingMedium,
                horizontalTextPadding: horizontalTextPadding,
                bottomMargin: cardBottomMargin,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBookingCard({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
    required double imageHeight,
    required double titleFontSize,
    required double buttonFontSize,
    required double buttonPaddingH,
    required double buttonPaddingV,
    required double borderRadius,
    required double imageRadius,
    required double verticalSpacingSmall,
    required double verticalSpacingMedium,
    required double horizontalTextPadding,
    required double bottomMargin,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(imageRadius)),
              child: Image.asset(
                imagePath,
                height: imageHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: verticalSpacingSmall),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalTextPadding),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: titleFontSize,
                ),
              ),
            ),
            SizedBox(height: verticalSpacingSmall),
            Center(
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF66BB6A),
                  padding: EdgeInsets.symmetric(
                    horizontal: buttonPaddingH,
                    vertical: buttonPaddingV,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                child: Text(
                  'click',
                  style: TextStyle(fontSize: buttonFontSize),
                ),
              ),
            ),
            SizedBox(height: verticalSpacingMedium),
          ],
        ),
      ),
    );
  }
}
