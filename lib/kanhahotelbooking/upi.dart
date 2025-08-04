import 'package:flutter/material.dart';

class banjoortolabook extends StatefulWidget {
  const banjoortolabook({super.key});

  @override
  State<banjoortolabook> createState() => _banjoortolabookState();
}

class _banjoortolabookState extends State<banjoortolabook> {
  String selectedValue = 'PhonePay';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Payment Method'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RadioListTile(
              title: Row(
                children: [
                  Image.asset('assets2/images2/paypal.png', height: 24, width: 24),
                  const SizedBox(width: 10),
                  const Text('PayPal'),
                ],
              ),
              value: 'PayPal',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value.toString();
                });
              },
              tileColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Colors.black),
              ),
            ),
            const SizedBox(height: 12),

            RadioListTile(
              title: Row(
                children: [
                  Image.asset('assets2/images2/phonepay.jpeg', height: 24, width: 24),
                  const SizedBox(width: 10),
                  const Text('PhonePay'),
                ],
              ),
              value: 'PhonePay',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value.toString();
                });
              },
              tileColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Colors.black),
              ),
            ),
            const SizedBox(height: 12),

            RadioListTile(
              title: Row(
                children: [
                  Image.asset('assets2/images2/pay.png', height: 24, width: 24),
                  const SizedBox(width: 10),
                  const Text('GooglePay'),
                ],
              ),
              value: 'GooglePay',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value.toString();
                });
              },
              tileColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Colors.black),
              ),
            ),
            const SizedBox(height: 12),


          ],
        ),
      ),
    );
  }
}
