import 'package:flutter/material.dart';

class kanha extends StatefulWidget {
  String? image;
  String? name;
  String? location;
  String? type;
  String? famousfor;
  String? besttimetovisit;
  String? Description;
  String? wildlifeyoumayspot;

  kanha({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.type,
    required this.famousfor,
    required this.besttimetovisit,
    required this.Description,
    required this.wildlifeyoumayspot,
  });

  @override
  State<kanha> createState() => _kanhaState();
}

class _kanhaState extends State<kanha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Text(widget.name ?? "Park Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to info1 screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.image!,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        widget.name ?? "No Name",
                        style: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _infoRow(Icons.location_on, "Location", widget.location),
                    _infoRow(Icons.nature_people, "Type", widget.type),
                    _infoRow(Icons.star, "Famous For", widget.famousfor),
                    _infoRow(Icons.calendar_month, "Best Time To Visit", widget.besttimetovisit),
                    const SizedBox(height: 16),
                    Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.Description ?? "No Description Available",
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 26),
                    if (widget.wildlifeyoumayspot != null) ...[
                      Row(
                        children: [
                          Icon(Icons.energy_savings_leaf, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Wildlife You May Spot',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.wildlifeyoumayspot!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(IconData icon, String title, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.green),
          const SizedBox(width: 8),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "$title: ",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: value ?? "N/A"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
