import 'package:flutter/material.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/kazirangahotels.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/kazirangaother.dart';
import 'package:internship/kazirangabooking/mutiplebooking1/kazirangasafari.dart';

class KazirangaBooking extends StatefulWidget {
  const KazirangaBooking({super.key});

  @override
  State<KazirangaBooking> createState() => _KazirangaBookingState();
}

class _KazirangaBookingState extends State<KazirangaBooking> {
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
          'Kaziranga',
          style: TextStyle(fontSize: w * 0.05),
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
                imagePath: 'assets2/images2/i.jpeg',
                title: 'Hotel',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const KazirangaBookingh()));
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
                imagePath: 'assets2/images2/j.jpeg',
                title: 'Safari',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ParkTicketKaziranga2()));
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
                imagePath: 'assets2/images2/k.jpeg',
                title: 'Other Activities',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const KazirangaActivity1()));
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 6,
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
                  fontWeight: FontWeight.bold,
                  fontSize: titleFontSize,
                  color: Colors.black87,
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
