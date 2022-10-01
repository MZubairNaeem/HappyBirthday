import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'surprisePage.dart';
import 'cake.dart';
import 'dontopen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  // Color _color = Colors.grey;
  Color customBlack = const Color.fromARGB(255, 53, 53, 53);
  Color customWhite = const Color.fromARGB(255, 237, 237, 237);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        title: Text(
          "Happy Birthday Chuzi",
          style: GoogleFonts.aclonica(),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome \nAliha Fatima aka Chuzi',
              textAlign: TextAlign.center,
              style: GoogleFonts.indieFlower(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Lottie.asset("assets/start.json"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'Surprise box',
                  style: GoogleFonts.indieFlower(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cake()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33.0),
                child: Text(
                  "Yummy Cake",
                  style: GoogleFonts.indieFlower(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DontOpen()));
              },
              child: Text(
                "Don't Open this one",
                style: GoogleFonts.indieFlower(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
