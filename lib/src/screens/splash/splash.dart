import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _logoPositionY = -100.0; // Mulai dengan posisi luar layar atas
  double _logoSize = 70.0; // Ukuran awal logo
  double _backgroundOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Delay sebelum animasi dimulai
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _logoPositionY = 200.0; // Akhir posisi di tengah layar
        _logoSize = 260.0;
        _backgroundOpacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Stack(
            fit: StackFit.expand, // Memastikan widget-stack mengisi layar
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: _backgroundOpacity,
                child: Image.asset(
                  'assets/img/background_splash_screen.png',
                  fit: BoxFit.cover,
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(seconds: 2), // Durasi animasi posisi
                curve: Curves.easeInOut, // Easing curve untuk animasi posisi
                left: 0,
                right: 0,
                top: _logoPositionY, // Posisi vertikal animasi
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2), // Durasi animasi ukuran
                  curve: Curves.easeInOut, // Easing curve untuk animasi ukuran
                  width: _logoSize, // Ukuran logo yang diubah secara animasi
                  height: _logoSize, // Ukuran logo yang diubah secara animasi
                  child: Center(
                    child: Image.asset(
                      'assets/icons/Logo_with_TaglineBottom.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
