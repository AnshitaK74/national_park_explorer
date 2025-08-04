import 'package:flutter/material.dart';

class tuli extends StatefulWidget {
  const tuli({super.key});

  @override
  State<tuli> createState() => _tuliState();
}

class _tuliState extends State<tuli> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final collageHeight = height * 0.22; // Reduced height responsively

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tuli Tiger Resort"),
        backgroundColor: Colors.green.shade600,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Image collage
          SizedBox(
            height: collageHeight,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets2/images2/f.jpeg',
                      fit: BoxFit.cover,
                      height: collageHeight,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/tuli.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/tuli2.jpeg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),

          _buildInfoCard(
            title: "Tuli Tiger Resort",
            description:
            "Near village Mocha, Kanha National Park,\nMadhya Pradesh 481111, India",
          ),
          const SizedBox(height: 20),
          _sectionTitle("Room Details"),
          _buildRoomCard(
            title: 'Deluxe Cottage',
            price: '₹4,200 / night',
            details: const [
              '🛏 Bedroom: 1 king-size bed',
              '👨‍👩‍👧 Capacity: 2 adults + 1 child',
              '🚿 Bathroom: Attached with geyser',
              '🌄 Private sit-out area',
              '❄ Air-conditioned room',
            ],
          ),
          _buildRoomCard(
            title: 'Family Suite',
            price: '₹6,000 / night',
            details: const [
              '🛏 Bedrooms: 2 (1 king + 2 twin beds)',
              '👨‍👩‍👧‍👦 Capacity: 4 guests',
              '🚿 2 Bathrooms: Attached',
              '🌿 Living area & garden view',
              '🛎 Room service available',
            ],
          ),
          const SizedBox(height: 20),
          _buildAmenitiesCard(),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildInfoCard({required String title, required String description}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 13.5,
                color: Colors.grey.shade800,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoomCard({
    required String title,
    required String price,
    required List<String> details,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 6),
            Text(
              price,
              style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.w600,
                fontSize: 14.5,
              ),
            ),
            const SizedBox(height: 10),
            ...details.map(
                  (d) => Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(d, style: const TextStyle(fontSize: 13.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAmenitiesCard() {
    const amenities = [
      '✔ Swimming Pool',
      '✔ Multi-cuisine Restaurant',
      '✔ Jungle Safari Assistance',
      '✔ Free Parking',
      '✔ Wi-Fi in Lobby',
    ];

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Amenities',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            ...amenities.map(
                  (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(item, style: const TextStyle(fontSize: 13.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
