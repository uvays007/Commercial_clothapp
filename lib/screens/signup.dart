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
            SizedBox(height: 50),
            Text(
              'Create an account',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Enter your email to sign up for this app',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsetsGeometry.all(25),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xFF828282)),
                    ),
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
