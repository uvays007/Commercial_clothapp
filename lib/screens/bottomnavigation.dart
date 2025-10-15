import 'package:comercial_app/screens/cart.dart';
import 'package:comercial_app/screens/notification.dart';
import 'package:comercial_app/screens/profile.dart';
import 'package:comercial_app/screens/tryon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:comercial_app/screens/home.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Home(),
    Tryon(),
    NotificationPage(),
    Cart(),
    Profile(),
  ];

  final List<String> icons = [
    'assets/icons/bottm_nav/home_30dp_000000_FILL0_wght400_GRAD0_opsz24.svg',
    'assets/icons/bottm_nav/checkroom_30dp_000000_FILL0_wght400_GRAD0_opsz24.svg',
    'assets/icons/bottm_nav/notifications_30dp_000000_FILL0_wght400_GRAD0_opsz24.svg',
    'assets/icons/bottm_nav/shopping_cart_30dp_000000_FILL0_wght400_GRAD0_opsz24.svg',
    'assets/icons/bottm_nav/person_30dp_000000_FILL0_wght400_GRAD0_opsz24.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () => setState(() => selectedIndex = index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    icons[index],
                    height: 24,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                      isSelected ? Colors.white : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
