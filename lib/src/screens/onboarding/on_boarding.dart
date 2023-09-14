import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:talent_dna/main.dart';
import 'package:talent_dna/src/screens/auth/register.dart';
import 'package:talent_dna/src/screens/onboarding/intro_page_one.dart';
import 'package:talent_dna/src/screens/onboarding/intro_page_three.dart';
import 'package:talent_dna/src/screens/onboarding/intro_page_two.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool onLastPage = false;

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          Align(
            alignment:
                const Alignment(0, 0.86), // Mengatur posisi di bagian bawah
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotColor: Color.fromARGB(74, 255, 255, 255),
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(140, 255, 255, 255)),
                        ),
                      ),
                      onLastPage
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const RegisterScreen();
                                }));
                              },
                              child: Image.asset(
                                'assets/icons/icon_next.png',
                                width: 60,
                                height: 60,
                              ))
                          : GestureDetector(
                              onTap: () {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              },
                              child: Image.asset(
                                'assets/icons/icon_next.png',
                                width: 60,
                                height: 60,
                              )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
