import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Cake extends StatefulWidget {
  @override
  _Cake createState() => _Cake();
}

class _Cake extends State<Cake> {
  // Color _color = Colors.grey;
  Color customBlack = const Color.fromARGB(255, 53, 53, 53);
  Color customWhite = const Color.fromARGB(255, 237, 237, 237);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        title: Text(
          "Cake",
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
              'Make a Wish\nand\nCut the Cake',
              style: GoogleFonts.indieFlower(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
            ),
            Lottie.asset("assets/cake.json"),
          ],
        ),
      ),
    );
  }
}
