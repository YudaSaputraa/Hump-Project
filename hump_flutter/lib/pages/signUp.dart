import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hump_flutter/pages/selectLocation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "Sign up with",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("email and phone number"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const IconTheme(
                        data: IconThemeData(
                          color: Colors.blue,
                        ),
                        child: Icon(Icons.mail),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 240, 237, 237),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 240, 237, 237),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    const Divider(
                      color: Color.fromARGB(255, 179, 178, 178),
                      height: 25,
                      thickness: 2,
                      indent: 30,
                      endIndent: 240,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(184, 2, 180, 10),
                      child: Text(
                        "OR",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 179, 178, 178),
                      height: 25,
                      thickness: 2,
                      indent: 240,
                      endIndent: 30,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 8, 30, 10),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 240, 237, 237),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 240, 237, 237),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(SelectLocation());
                    },
                    child: Text(
                      "SIGN IN",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromARGB(255, 41, 209, 221),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.roboto(
                            color: Color.fromARGB(255, 3, 226, 255),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
