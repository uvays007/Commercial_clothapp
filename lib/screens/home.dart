import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fazil',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: 30,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(30),
                    child: Image.asset(
                      'assets/images/appi.jpg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 145, // adjust as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // rounded corners
                image: DecorationImage(
                  alignment: Alignment(0, -0.8),
                  image: AssetImage(
                    'assets/images/young-woman-beautiful-red-dress.jpg',
                  ),
                  fit: BoxFit.cover, // cover the entire container
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), // optional overlay
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Womens Day',
                        style: TextStyle(
                          fontFamily: 'Jomolhari',
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Up to 50% off',
                        style: TextStyle(
                          fontFamily: 'Jomolhari',
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/arrow_forward_ios_24dp_000000_FILL0_wght400_GRAD0_opsz24.png',
                  height: 10,
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
