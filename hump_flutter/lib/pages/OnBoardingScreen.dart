import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hump_flutter/pages/welcome_login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 430,
              ),
              Container(
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Stack(
                      children: [
                        PageView(
                          controller: _pageController,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 53,
                                  ),
                                  Image.asset(
                                    "images/image.png",
                                    alignment: Alignment.topCenter,
                                  ),
                                  const SizedBox(
                                    height: 70,
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 60,
                                      left: 60,
                                      top: 20,
                                    ),
                                    child: Text(
                                      "Reference site about Lorem Ipsum, giving information origin as well as a random",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 55,
                                  ),
                                  Image.asset(
                                    "images/image2.png",
                                    alignment: Alignment.topCenter,
                                  ),
                                  const SizedBox(
                                    height: 55,
                                  ),
                                  Text(
                                    "Easy Fund Transfer",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 60, left: 60, top: 20),
                                    child: Text(
                                      "Reference site about Lorem Ipsum, giving information origin as well as a random",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 65,
                                  ),
                                  Image.asset(
                                    "images/image3.png",
                                    alignment: Alignment.topCenter,
                                  ),
                                  const SizedBox(
                                    height: 95,
                                  ),
                                  Text(
                                    "Secure Mobile Banking",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 60, left: 60, top: 20),
                                    child: Text(
                                      "Reference site about Lorem Ipsum, giving information origin as well as a random",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: SmoothPageIndicator(
                                  controller: _pageController,
                                  count: 3,
                                  effect: const WormEffect(
                                    activeDotColor: Colors.white,
                                    dotHeight: 13,
                                    dotWidth: 13,
                                    dotColor:
                                        Color.fromARGB(255, 168, 225, 233),
                                  ),
                                  onDotClicked: (index) =>
                                      _pageController.animateToPage(index,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.bounceInOut),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 605, 20, 30),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 300,
                                  child: FloatingActionButton.extended(
                                    onPressed: () {
                                      Get.off(WelcomeLogin());
                                    },
                                    elevation: 1,
                                    backgroundColor:
                                        Color.fromARGB(255, 60, 223, 245),
                                    label: Text(
                                      "Get Started",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
