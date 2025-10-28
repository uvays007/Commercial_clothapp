import 'package:flutter/material.dart';

class Tryon extends StatefulWidget {
  const Tryon({super.key});

  @override
  State<Tryon> createState() => _TryonState();
}

class _TryonState extends State<Tryon> {
  String selectedShirt = "assets/images/Tshirt(black_china).png";
  String selectedPant = "assets/images/pngwing_pant.png";

  final List<Map<String, String>> shirts = [
    {
      "name": "Tabular Men Tshirt Black",
      "image": "assets/images/Tshirt(black_china).png",
    },
    {
      "name": "Tabular Men Tshirt Red",
      "image": "assets/images/Tshirt(blue).png",
    },
    {
      "name": "Tabular Men Tshirt Blue",
      "image": "assets/images/Tshirt(Green).png",
    },
  ];

  final List<Map<String, String>> pants = [
    {"name": "Polo Men Jeans", "image": "assets/images/pngwing_pant.png"},
    {"name": "Black Slim Fit", "image": "assets/images/black_pant.png"},
    {"name": "Black Slim brown", "image": "assets/images/pant_blueflop.png"},
  ];

  void _showItemSelector({required bool isShirt}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        final items = isShirt ? shirts : pants;
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                isShirt ? "Select Shirt" : "Select Pant",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ListTile(
                      leading: Image.asset(
                        item["image"]!,
                        height: 50,
                        width: 50,
                        fit: BoxFit.contain,
                      ),
                      title: Text(item["name"]!),
                      onTap: () {
                        setState(() {
                          if (isShirt) {
                            selectedShirt = item["image"]!;
                          } else {
                            selectedPant = item["image"]!;
                          }
                        });
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),

              Container(
                height: 325,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Fitmax_dummy_2.png",
                      fit: BoxFit.contain,
                      height: 400,
                    ),
                    Image.asset(selectedPant, fit: BoxFit.contain, height: 400),
                    Image.asset(
                      selectedShirt,
                      fit: BoxFit.contain,
                      height: 400,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Choose Shirt',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Jomolhari',
                ),
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () => _showItemSelector(isShirt: true),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 240, 240, 240),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Select Shirt',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(Icons.add_box),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Choose Pant',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Jomolhari',
                ),
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () => _showItemSelector(isShirt: false),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 240, 240, 240),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Select Pant',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(Icons.add_box),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFC19375),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  minimumSize: const Size(double.infinity, 56),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Added to Cart!"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
