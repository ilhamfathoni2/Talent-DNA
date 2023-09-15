import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/main.dart';

class ResgisterScreenStepTwo extends StatefulWidget {
  const ResgisterScreenStepTwo({super.key});

  @override
  State<ResgisterScreenStepTwo> createState() => _ResgisterScreenStepTwoState();
}

class _ResgisterScreenStepTwoState extends State<ResgisterScreenStepTwo> {
  bool _buttonPersonal = true;
  bool _buttonOrganization = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 500),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/background_splash_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 500),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // ---- Icon Back ----
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/icons/icon_back.png',
                        width: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // --------- Title -----------
                        const Text(
                          'Choose Your Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        // --------- Sub Title -----------
                        const Text(
                          'Select one of account type to identify your personality',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        // --------- Choose Button -----------
                        Container(
                          height: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(130, 20, 0, 30),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              // ------- Button Personal --------
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _buttonPersonal = true;
                                      _buttonOrganization = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(130, 20, 0, 30),
                                      borderRadius: _buttonPersonal
                                          ? const BorderRadius.all(
                                              Radius.circular(12))
                                          : const BorderRadius.only(
                                              topRight: Radius.circular(0),
                                              topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(0)),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: _buttonPersonal
                                              ? [
                                                  const Color(0xFF11A8FF),
                                                  const Color(0xFFFF00FF)
                                                ]
                                              : [
                                                  Colors.transparent,
                                                  Colors.transparent
                                                ],
                                        ),
                                        width: _buttonPersonal ? 2 : 0,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Personal',
                                        style: TextStyle(
                                          color: _buttonPersonal
                                              ? Colors.white
                                              : const Color(0xFF9DB2CE),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // ------- Button Organizational --------
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _buttonPersonal = false;
                                      _buttonOrganization = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(130, 20, 0, 30),
                                      borderRadius: _buttonOrganization
                                          ? const BorderRadius.all(
                                              Radius.circular(12))
                                          : const BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(12),
                                              bottomRight: Radius.circular(12)),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: _buttonOrganization
                                                ? [
                                                    const Color(0xFF11A8FF),
                                                    const Color(0xFFFF00FF)
                                                  ]
                                                : [
                                                    Colors.transparent,
                                                    Colors.transparent
                                                  ]),
                                        width: _buttonOrganization ? 2 : 0,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Organizational',
                                        style: TextStyle(
                                          color: _buttonOrganization
                                              ? Colors.white
                                              : const Color(0xFF9DB2CE),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // -------- Form Register --------
                        Container(
                          margin: const EdgeInsets.only(top: 24),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(127, 20, 0, 30),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              // ------- First Name ----------
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'First Name',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF4703A6),
                                            Color(0xFFDFC9FF)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 79, 3, 185),
                                            Color.fromARGB(255, 226, 207, 255)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                ),
                              ),
                              // ------- End First Name ----------
                              const SizedBox(height: 16),
                              // ------- Last Name ----------
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Last Name',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF4703A6),
                                            Color(0xFFDFC9FF)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 79, 3, 185),
                                            Color.fromARGB(255, 226, 207, 255)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                ),
                              ),
                              // ------- End Last Name ----------
                              const SizedBox(height: 16),
                              // ------- Company Name ----------
                              if (_buttonOrganization)
                                Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Company Name',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextFormField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: const InputDecoration(
                                        hintText: 'Company Name',
                                        hintStyle:
                                            TextStyle(color: Colors.white),
                                        border: GradientOutlineInputBorder(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFF4703A6),
                                                  Color(0xFFDFC9FF)
                                                ]),
                                            width: 1,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12))),
                                        focusedBorder:
                                            GradientOutlineInputBorder(
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color.fromARGB(
                                                          255, 79, 3, 185),
                                                      Color.fromARGB(
                                                          255, 226, 207, 255)
                                                    ]),
                                                width: 1,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12))),
                                      ),
                                    ),
                                  ],
                                ),
                              // ------- End Company Name ----------
                              const SizedBox(height: 16),
                              // ------- Phone Number ----------
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Phone Number',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF4703A6),
                                            Color(0xFFDFC9FF)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 79, 3, 185),
                                            Color.fromARGB(255, 226, 207, 255)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                ),
                              ),
                              // ------- End Phone Number ----------
                              const SizedBox(height: 16),
                              // ------- NPWP ----------
                              if (_buttonOrganization)
                                Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'NPWP Number',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TextFormField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: const InputDecoration(
                                        hintText: 'NPWP Number',
                                        hintStyle:
                                            TextStyle(color: Colors.white),
                                        border: GradientOutlineInputBorder(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFF4703A6),
                                                  Color(0xFFDFC9FF)
                                                ]),
                                            width: 1,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12))),
                                        focusedBorder:
                                            GradientOutlineInputBorder(
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color.fromARGB(
                                                          255, 79, 3, 185),
                                                      Color.fromARGB(
                                                          255, 226, 207, 255)
                                                    ]),
                                                width: 1,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12))),
                                      ),
                                    ),
                                  ],
                                ),
                              // ------- End NPWP ----------
                              const SizedBox(height: 16),
                              // -------- Input Job Option --------
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Job',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              DropdownButtonFormField<String>(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'Select Job',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF4703A6),
                                            Color(0xFFDFC9FF)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 103, 0, 248),
                                            Color.fromARGB(255, 226, 207, 255)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                ),
                                items: [
                                  'Pegawai Negri',
                                  'Pegawai Swasta',
                                  'Lainnya'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  // Handle dropdown value change here
                                },
                                icon: const Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                elevation: 2,
                                dropdownColor:
                                    const Color.fromARGB(255, 56, 0, 83),
                              ),
                              // -------- End Input Job Option --------
                              const SizedBox(height: 16),
                              // --------- Input Country ----------
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Country',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'Country',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF4703A6),
                                            Color(0xFFDFC9FF)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 79, 3, 185),
                                            Color.fromARGB(255, 226, 207, 255)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                ),
                              ),
                              // ---------- End Input Country -----------
                              const SizedBox(height: 16),
                              // --------- Input Address ----------
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'Address',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF4703A6),
                                            Color(0xFFDFC9FF)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  focusedBorder: GradientOutlineInputBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 79, 3, 185),
                                            Color.fromARGB(255, 226, 207, 255)
                                          ]),
                                      width: 1,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                ),
                              ),
                              // ---------- End Input Address -----------
                              const SizedBox(height: 24),
                              // -------- BUtton Submit ---------
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const MainApp();
                                  }));
                                },
                                child: Container(
                                  width: width,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF11A8FF),
                                          Color(0xFFFF00FF)
                                        ]),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'SUBMIT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
