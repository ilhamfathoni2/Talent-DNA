import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF220D46),
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
                // Lottie animation
                // Lottie.network(
                //   'https://lottie.host/2fdc7ada-cdab-4f5c-b9b9-f322be0a91c8/cVB3qAgJOr.json',
                //   height: 200, // Sesuaikan tinggi animasi sesuai kebutuhan Anda
                //   width: 200, // Sesuaikan lebar animasi sesuai kebutuhan Anda
                // ),
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
