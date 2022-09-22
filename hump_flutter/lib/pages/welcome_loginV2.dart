import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:hump_flutter/pages/signUp.dart';

class WelcomeLogin2 extends StatelessWidget {
  const WelcomeLogin2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/welcomeLogin2.png")),
                ),
                height: 430,
              ),
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Welcome to Bank",
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 40, left: 40, top: 8),
                      child: Text(
                        "Deliver your Cloth arround the world without hesitation",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color.fromARGB(255, 138, 74, 190),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(SignUp());
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color.fromARGB(255, 113, 212, 236),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/biometric.png")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                alignment: Alignment.bottomCenter,
                height: 329,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 41, 209, 221),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
