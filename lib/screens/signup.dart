import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 130),
            Text(
              'FITMAX',
              style: TextStyle(
                fontFamily: 'LondrinaSolid',
                shadows: [
                  Shadow(
                    offset: Offset(0, 4),
                    blurRadius: 6.0,
                    color: Colors.grey,
                  ),
                ],
                fontWeight: FontWeight.w600,
                fontSize: 45,
                color: Color(0xFFC19375),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
