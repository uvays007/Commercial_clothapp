import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            color: Colors.black,
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const Divider(thickness: 1.2),
                  const SizedBox(height: 10),

                  _buildInfoRow(
                    title: 'SHIPPING',
                    subtitle: 'Add Shipping Address',
                  ),
                  _buildInfoRow(title: 'DELIVERY', subtitle: 'Free | 3–4 days'),
                  _buildInfoRow(title: 'PAYMENT', subtitle: 'Visa *1234'),
                  _buildInfoRow(title: 'COUPON', subtitle: 'Apply Coupon Code'),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'ITEMS',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'DESCRIPTION',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'PRICE',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  _buildCartItem(
                    imagePath:
                        'assets/images/alex-haigh-fEt6Wd4t4j0-unsplash.png',
                    title: 'KIKI Originals',
                    subtitle: 'Men Tshirt',
                    desc: 'High quality cotton wear',
                    qty: '01',
                    price: 'RS.600',
                  ),
                  const SizedBox(height: 12),
                  _buildCartItem(
                    imagePath:
                        'assets/images/tuananh-blue-wNP79A-_bRY-unsplash.jpg',
                    title: 'Leventer',
                    subtitle: 'Men Jeans',
                    desc: 'High Quality Denimn',
                    qty: '01',
                    price: 'RS.1200',
                  ),

                  const Divider(thickness: 1.2),
                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'RS.1450',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Shipping',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Free',
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 1.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'RS.1450',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80), // space for button
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {},
              child: const Text(
                'Place Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({required String title, required String subtitle}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.arrow_forward_ios, size: 15),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(),
      ],
    );
  }

  Widget _buildCartItem({
    required String imagePath,
    required String title,
    required String subtitle,
    required String desc,
    required String qty,
    required String price,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(subtitle, style: const TextStyle(fontSize: 14)),
                Text(
                  desc,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text('Qty: $qty', style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            price,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
