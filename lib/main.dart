import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talent_dna/src/screens/dna/talent_dna.dart';
import 'package:talent_dna/src/screens/history/history.dart';
import 'package:talent_dna/src/screens/home/home.dart';
import 'package:talent_dna/src/screens/onboarding/on_boarding.dart';
import 'package:talent_dna/src/screens/order/order.dart';
import 'package:talent_dna/src/screens/result/result.dart';
import 'package:talent_dna/src/screens/splash/splash.dart';
import 'package:talent_dna/src/widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Talent DNA',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: _showSplash ? const SplashScreen() : const OnBoardingScreen(),
    );
  }
}

// Main App with Bottom Navigation Bar
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainApps();
}

class _MainApps extends State<MainApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: IndexedStack(
            index: currentIndex,
            children: const [
              MyHomeScreen(),
              ResultScreen(),
              TalentDnaScreen(),
              HistoryScreen(),
              OrderScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyConvexAppBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
