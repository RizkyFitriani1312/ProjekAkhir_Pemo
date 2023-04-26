import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop_app/landing_page.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 200),
              child: Text(
                'Fruit Shop App',
                style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 190,
              width: 190,
              margin: EdgeInsets.only(top: 20),
              child: Image(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ],
        ),
        splashIconSize: 700,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black87,
        nextScreen: landing_page());
  }
}
