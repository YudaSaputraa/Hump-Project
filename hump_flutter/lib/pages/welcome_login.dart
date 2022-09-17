import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeLogin extends StatelessWidget {
  const WelcomeLogin({Key? key}) : super(key: key);

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
                      image: AssetImage("images/Payment_Information.png")),
                ),
                height: 450,
              ),
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome to Bank",
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Continue with Email",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20,
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
                      height: 20,
                    ),
                    SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Continue with Number Phone",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20,
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: GoogleFonts.roboto(
                                color: Color.fromARGB(255, 25, 0, 250),
                                fontSize: 15,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
                alignment: Alignment.bottomCenter,
                height: 309,
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
