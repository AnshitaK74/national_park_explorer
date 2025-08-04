import 'package:flutter/material.dart';
class Banjoor extends StatefulWidget {
  const Banjoor({super.key});

  @override
  State<Banjoor> createState() => _BanjoorState();
}

class _BanjoorState extends State<Banjoor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red'),
        centerTitle:true
      ),
    );
  }
}
