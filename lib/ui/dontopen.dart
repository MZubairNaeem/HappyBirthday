import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DontOpen extends StatefulWidget {
  @override
  _DontOpen createState() => _DontOpen();
}

class _DontOpen extends State<DontOpen> {
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
          "isko open nhi krna tha",
          style: GoogleFonts.aclonica(),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/ghost.json"),
            Text(
              'Why you open this?\nTell me, why?\nnothing inside here',
              style: GoogleFonts.indieFlower(
                  fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
