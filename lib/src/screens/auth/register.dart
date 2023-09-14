import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/main.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/background_splash_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/Logo_with_TaglineBottom.png',
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Welcome,',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Lorem ipsum dolor sit amet consectetur.,',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        contentPadding: EdgeInsets.all(12.0),
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Color.fromARGB(149, 71, 3, 166),
                        filled: true,
                        border: GradientOutlineInputBorder(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF4703A6), Color(0xFFDFC9FF)]),
                            width: 1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        focusedBorder: GradientOutlineInputBorder(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 79, 3, 185),
                                  Color.fromARGB(255, 226, 207, 255)
                                ]),
                            width: 1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Color.fromARGB(149, 71, 3, 166),
                        filled: true,
                        contentPadding: EdgeInsets.all(12.0),
                        hintStyle: TextStyle(color: Colors.white),
                        border: GradientOutlineInputBorder(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF4703A6), Color(0xFFDFC9FF)]),
                            width: 1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        focusedBorder: GradientOutlineInputBorder(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 79, 3, 185),
                                  Color.fromARGB(255, 226, 207, 255)
                                ]),
                            width: 1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    // Button "SIGN UP" -------------
                    Container(
                      width: width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF11A8FF), Color(0xFFFF00FF)]),
                      ),
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MainApp();
                          }));
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding:
                                const EdgeInsets.symmetric(vertical: 20.0)),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(height: 20),
                    // Text Or Sign Up with ----------
                    const Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Or Sign Up with',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Button Sign Up with Google -----------
                    Center(
                      child: Container(
                        width: width,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(64, 17, 168, 255),
                            Color.fromARGB(64, 255, 0, 255)
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF11A8FF), Color(0xFFFF00FF)]),
                            width: 1,
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const MainApp();
                            }));
                          },
                          splashColor: const Color.fromARGB(68, 33, 149, 243),
                          child: Center(
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              Image.asset(
                                'assets/icons/icon_google.png',
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Sign Up with Google',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already Have an Account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
