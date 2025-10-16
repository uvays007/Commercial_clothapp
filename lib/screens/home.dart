import 'package:carousel_slider/carousel_slider.dart';
import 'package:comercial_app/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<Map<String, String>> products = [
  {
    "brandname": "KIKI Original",
    "name": "Men Tshirt",
    "price": "RS 600",
    "image": "assets/images/alex-haigh-fEt6Wd4t4j0-unsplash.jpg",
  },
  {
    "brandname": "Leventer",
    "name": "Men Jeans",
    "price": "RS 1200",
    "image": "assets/images/tuananh-blue-wNP79A-_bRY-unsplash.jpg",
  },
  {
    "brandname": "Ortox",
    "name": "Women Nighty",
    "price": "RS 500",
    "image": "assets/images/muhammad-nadir-cHLW0E2PrAc-unsplash.jpg",
  },
  {
    "brandname": "Kitty",
    "name": "Girls Frock",
    "price": "RS 399",
    "image": "assets/images/fashion-woman-with-clothes.jpg",
  },
];
final List<Map<String, String>> banners = [
  {
    "Text1": "Womens Day",
    "Text2": "Up to 50% off",
    "image":
        "assets/images/carousel_banner/young-woman-beautiful-red-dress.jpg",
  },
  {
    "Text1": "Mens Day",
    "Text2": "Up to 80% off",
    "image":
        "assets/images/carousel_banner/young-woman-beautiful-red-dress.jpg",
  },
  {
    "Text1": "Kids Day",
    "Text2": "Up to 30% off",
    "image":
        "assets/images/carousel_banner/young-woman-beautiful-red-dress.jpg",
  },
];
int activeIndex = 0;
final CarouselSliderController controller = CarouselSliderController();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF1F3F4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Transform.scale(
                    scale: 0.5,
                    child: SvgPicture.asset(
                      height: 1,
                      width: 1,
                      'assets/icons/filter_list_24dp_000000_FILL0_wght400_GRAD0_opsz24.svg',
                    ),
                  ),
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(25),
                  child: CarouselSlider.builder(
                    carouselController: controller,
                    itemCount: banners.length,
                    options: CarouselOptions(
                      height: 130,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) => setState(() {
                        activeIndex = index;
                      }),
                    ),
                    itemBuilder: (context, index, _) {
                      final banner = banners[index];
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment(0, -0.8),
                            image: AssetImage(banner["image"]!),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.1),
                              BlendMode.darken,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  banner["Text1"]!,
                                  style: TextStyle(
                                    fontFamily: 'Jomolhari',
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  banner["Text2"]!,
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
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: banners.length,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 2.5,
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: Colors.white,
                      dotColor: Colors.white.withOpacity(.5),

                      spacing: 4,
                    ),
                    onDotClicked: (index) => controller.animateToPage(index),
                  ),
                ),
              ],
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
                SizedBox(width: 4),
                SvgPicture.asset(
                  'assets/icons/expand_circle_right_41dp_000000_FILL0_wght400_GRAD0_opsz40.svg',
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 76,
                  width: 76,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/images/full-length-portrait-businessman-isolated-gray-wall.jpg',
                        alignment: Alignment(0, -1.6),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 76,
                  width: 76,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/images/high-fashion-look-glamor-stylish-sexy-beautiful-young-woman-model-summer-black-hipster-dress.jpg',
                        alignment: Alignment(0, -1.4),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 76,
                  width: 76,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Transform.rotate(
                        angle: -0.2,
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/full-shot-modern-boy-posing-with-sunglasses.jpg',
                          alignment: Alignment(0, -1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 76,
                  width: 76,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/images/little-fashionista-with-shopping-bag-summer-hat-glasses-colored-pink-background-mom-s-shoes-concept-children-s-fashion.jpg',
                        alignment: Alignment(0, -.8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Men',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Women',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Boys',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Girls',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'All Products',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                SvgPicture.asset(
                  'assets/icons/expand_circle_right_41dp_000000_FILL0_wght400_GRAD0_opsz40.svg',
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product(),
                              ),
                            ),
                            child: Image.asset(
                              product['image']!,
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          product['brandname']!,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          product['name']!,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          product['price']!,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
