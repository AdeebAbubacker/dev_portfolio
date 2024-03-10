import 'package:adeeb_portfolio/core/constant_mob.dart';
import 'package:adeeb_portfolio/core/constant_web.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 1000) {
              // For web view
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Android app development via Flutter',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Splash Screen',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Firebase Auth/Cloud',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - REST APIs',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Maps Integration and more...!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/app.png',
                              width: 80,
                            ),
                            const Text('Mobile App Development'),
                          ],
                        )),
                      ),
                      SizedBox(width: 40),
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Modern UI/UX Designing',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Figma',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Mobile & Web designs',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Interactive UI designs',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Responsiveness',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Promo Videos and more..!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/ui.png',
                              width: 80,
                            ),
                            const Text('UI/UX Designing'),
                          ],
                        )),
                      ),
                      SizedBox(width: 40),
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rapid Prototype via Flutter',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Working MVP',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Quick & Working prototype',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/rapid.png',
                              width: 80,
                            ),
                            const Text('Rapid Prototyping'),
                          ],
                        )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Technical Blog Writing',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Medium Blog writing',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Soothing header images',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - SEO friendly',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Researched topics and more..!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/blog.png',
                              width: 80,
                            ),
                            const Text('Technical Blog Writing'),
                          ],
                        )),
                      ),
                      SizedBox(width: 40),
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Open source Github Projects',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Awesome README.md',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Well documented',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Header images and more...!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Researched topics and more..!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "</>",
                              style: GoogleFonts.inconsolata(
                                textStyle: opensourcebstyle,
                              ),
                            ),
                            const Text('Open Source Github'),
                          ],
                        )),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              // For mobile view
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Android app development via Flutter',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Splash Screen',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Firebase Auth/Cloud',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - REST APIs',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Maps Integration and more...!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/app.png',
                              width: 80,
                            ),
                            const Text('Mobile App Development'),
                          ],
                        )),
                      ),
                      SizedBox(width: 30),
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Modern UI/UX Designing',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Figma',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Mobile & Web designs',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Interactive UI designs',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Responsiveness',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Promo Videos and more..!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/ui.png',
                              width: 80,
                            ),
                            const Text('UI/UX Designing'),
                          ],
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rapid Prototype via Flutter',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Working MVP',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Quick & Working prototype',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/rapid.png',
                              width: 80,
                            ),
                            const Text('Rapid Prototyping'),
                          ],
                        )),
                      ),
                      SizedBox(width: 30),
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Technical Blog Writing',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Medium Blog writing',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Soothing header images',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - SEO friendly',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Researched topics and more..!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/services/blog.png',
                              width: 80,
                            ),
                            const Text('Technical Blog Writing'),
                          ],
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SliderCard(
                        backdata: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Open source Github Projects',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Awesome README.md',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Well documented',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Header images and more...!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                    Text(
                                      ' - Researched topics and more..!',
                                      style: GoogleFonts.quicksand(
                                        textStyle: slidercardback,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.red, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Rectangular border radius
                                    ),
                                  ),
                                  child: Text(
                                    'HIRE ME',
                                    style: TextStyle(
                                      color: Colors.white, // Text color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        frontdata: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "</>",
                              style: GoogleFonts.inconsolata(
                                textStyle: opensourcebstyle,
                              ),
                            ),
                            const Text('Open Source Github'),
                          ],
                        )),
                      ),
                    ],
                  )
                ],
              );
            }
          },
        ),
      ],
    );
  }
}

class SliderCard extends StatefulWidget {
  final Widget frontdata;
  final Widget backdata;
  const SliderCard({
    super.key,
    required this.frontdata,
    required this.backdata,
  });

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  Color? shadowColor1;
  bool isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            // Change shadow color to red when mouse enters
            shadowColor1 = Colors.red;
            isFlipped = true;
          });
        },
        onExit: (_) {
          setState(() {
            // Reset shadow color when mouse exits
            shadowColor1 = Colors.grey;
            isFlipped = false;
          });
        },
        child: FlipCard(
          flipOnTouch: true, // Do not flip on touch
          direction: FlipDirection.HORIZONTAL,
          front: Container(
            width: 290,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: shadowColor1 ?? Colors.grey,
                  blurRadius: 18,
                  offset: const Offset(-1, 2),
                ),
              ],
            ),
            child: widget.frontdata,
          ),
          back: Container(
            width: 290,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: shadowColor1 ?? Colors.grey,
                  blurRadius: 4,
                  offset: Offset(-1, 2),
                ),
              ],
            ),
            child: widget.backdata,
          ),
          onFlip: () {
            // ignore: avoid_print
            print('Card flipped');
          },
        ),
      ),
    );
  }
}
