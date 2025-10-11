import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
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
                  SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFFC19375),
                      ),
                      onPressed: () {},
                      child: Text('Continue'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFE6E6E6),
                          thickness: 1,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFE6E6E6),
                          thickness: 1,
                          indent: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFEEEEEE),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            height: 20,
                            width: 20,
                            'assets/icons/Google_Favicon_2025.svg',
                          ),
                          SizedBox(width: 5),

                          Text('Continue with Google'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFEEEEEE),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            height: 20,
                            width: 20,
                            'assets/icons/Apple_logo_black.svg',
                          ),
                          SizedBox(width: 5),

                          Text('Continue with Apple'),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'By clicking continue, you agree to our Terms of Service and Privacy Policy',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
