import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Select location",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: Image.asset(
                "images/locationImage.png",
                alignment: Alignment.topCenter,
              ),
            )
          ],
        ),
      ),
    );
  }
}
