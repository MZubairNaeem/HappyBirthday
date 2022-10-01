import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'mainPage.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPage createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  Color customBlack = const Color.fromARGB(255, 53, 53, 53);
  Color customWhite = const Color.fromARGB(255, 237, 237, 237);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(68.0),
                child: Lottie.asset("assets/start1.json"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34.0, vertical: 8),
                  child: Text(
                    "Start",
                    style: GoogleFonts.indieFlower(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
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
