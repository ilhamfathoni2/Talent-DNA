import 'package:flutter/material.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/blur_blue.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Menengahkan secara vertikal
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Menengahkan secara horizontal
              children: [
                // Teks pertama
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Find Your Character Match with Your DNA',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Teks kedua
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Amet',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
