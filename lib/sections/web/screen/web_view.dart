import 'dart:async';

import 'package:adeeb_portfolio/sections/web/widgets/contact/conatct_section.dart';
import 'package:adeeb_portfolio/sections/web/widgets/projects/project_card.dart';
import 'package:adeeb_portfolio/sections/web/widgets/services/my_servcies.dart';
import 'package:adeeb_portfolio/core/constant_mob.dart';
import 'package:adeeb_portfolio/sections/mobile/widget/contact-us/contact_us_utils.dart';
import 'package:adeeb_portfolio/sections/mobile/widget/portfolio/portfolio_utils.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:adeeb_portfolio/core/constant_web.dart';

class WebView extends StatelessWidget {
  final ScrollController scrollController;

  WebView({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return ListView.builder(
      controller: scrollController,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  const HomeSection(),
                  AboutMeSection(),
                  const ServiceSection(),
                  const ProjectSection(),
                  const ContactSection(),
                  SizedBox(height: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Developed with ❤️ by "),
                        GestureDetector(
                          onTap: () {
                            launch(
                                'https://github.com/AdeebAbubacker/adeeb_portfolio');
                          },
                          child: const Text(
                            'flutter',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Timer.periodic(Duration(seconds: 3), (timer) {
      print(width);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 140,
            right: 40,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 140),
                    Row(
                      children: [
                        Text(
                          'WELCOME TO MY PORTFOLIO!',
                          style: width < 1035
                              ? GoogleFonts.montserrat(
                                  textStyle: welcomesmallstyle)
                              : GoogleFonts.montserrat(textStyle: welcomestyle),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/hi.gif',
                          height: 43,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ADEEB ',
                      style: GoogleFonts.montserrat(
                        textStyle: width < 1035 ? name1smallstyle : name1style,
                      ),
                    ),
                    Text(
                      'ABUBACKER ',
                      style: GoogleFonts.montserrat(
                        textStyle: width < 1035 ? name1smallstyle : name1style,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.arrow_right_outlined,
                          color: Color.fromARGB(255, 172, 38, 29),
                          size: 30,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              ' Flutter Developer',
                              textStyle: GoogleFonts.montserrat(
                                textStyle: animatedtextstyle,
                              ),
                              speed: const Duration(milliseconds: 50),
                            ),
                            TyperAnimatedText(
                              ' UI/UX Enthusiast',
                              textStyle: GoogleFonts.montserrat(
                                textStyle: animatedtextstyle,
                              ),
                              speed: const Duration(milliseconds: 50),
                            ),
                            TyperAnimatedText(
                              ' A friend 😊',
                              textStyle: GoogleFonts.montserrat(
                                textStyle: animatedtextstyle,
                              ),
                              speed: const Duration(milliseconds: 50),
                            ),
                          ],
                          repeatForever: true,
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/photos/adeeb_bw.png',
                      // width: 310,
                      height: 500,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}

// class HomeSection extends StatelessWidget {
//   const HomeSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxHeight < 995 ) {
//           Timer.periodic(Duration(seconds: 1), (timer) {
//             print(constraints.maxWidth);
//           });
//              return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 80,
//                   right: 40,
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           SizedBox(height: 140),
//                           Row(
//                             children: [
//                               Text(
//                                 'WELCOME TO MY PORTFOLIO!',
//                                 style: GoogleFonts.montserrat(
//                                     textStyle: welcomesmallstyle),
//                               ),
//                               const SizedBox(width: 10),
//                               Image.asset(
//                                 'assets/hi.gif',
//                                 height: 36,
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             'ADEEB ',
//                             style: GoogleFonts.montserrat(
//                               textStyle: name1smallstyle,
//                             ),
//                           ),
//                           Text(
//                             'ABUBACKER ',
//                             style: GoogleFonts.montserrat(
//                               textStyle: name1smallstyle,
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               const Icon(
//                                 Icons.arrow_right_outlined,
//                                 color: Color.fromARGB(255, 172, 38, 29),
//                                 size: 30,
//                               ),
//                               AnimatedTextKit(
//                                 animatedTexts: [
//                                   TyperAnimatedText(
//                                     ' Flutter Developer',
//                                     textStyle: GoogleFonts.montserrat(
//                                       textStyle: animatedtextstyle,
//                                     ),
//                                     speed: const Duration(milliseconds: 50),
//                                   ),
//                                   TyperAnimatedText(
//                                     ' UI/UX Enthusiast',
//                                     textStyle: GoogleFonts.montserrat(
//                                       textStyle: animatedtextstyle,
//                                     ),
//                                     speed: const Duration(milliseconds: 50),
//                                   ),
//                                   TyperAnimatedText(
//                                     ' A friend 😊',
//                                     textStyle: GoogleFonts.montserrat(
//                                       textStyle: animatedtextstyle,
//                                     ),
//                                     speed: const Duration(milliseconds: 50),
//                                   ),
//                                 ],
//                                 repeatForever: true,
//                                 isRepeatingAnimation: true,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/photos/adeeb_bw.png',
//                             // width: 310,
//                             height: 500,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 70),
//             ],
//           );

//      } else {

//              return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 140,
//                   right: 40,
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           SizedBox(height: 140),
//                           Row(
//                             children: [
//                               Text(
//                                 'WELCOME TO MY PORTFOLIO!',
//                                 style: GoogleFonts.montserrat(
//                                     textStyle: welcomestyle),
//                               ),
//                               const SizedBox(width: 10),
//                               Image.asset(
//                                 'assets/hi.gif',
//                                 height: 43,
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             'ADEEB ',
//                             style: GoogleFonts.montserrat(
//                               textStyle: name1style,
//                             ),
//                           ),
//                           Text(
//                             'ABUBACKER ',
//                             style: GoogleFonts.montserrat(
//                               textStyle: name1style,
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               const Icon(
//                                 Icons.arrow_right_outlined,
//                                 color: Color.fromARGB(255, 172, 38, 29),
//                                 size: 30,
//                               ),
//                               AnimatedTextKit(
//                                 animatedTexts: [
//                                   TyperAnimatedText(
//                                     ' Flutter Developer',
//                                     textStyle: GoogleFonts.montserrat(
//                                       textStyle: animatedtextstyle,
//                                     ),
//                                     speed: const Duration(milliseconds: 50),
//                                   ),
//                                   TyperAnimatedText(
//                                     ' UI/UX Enthusiast',
//                                     textStyle: GoogleFonts.montserrat(
//                                       textStyle: animatedtextstyle,
//                                     ),
//                                     speed: const Duration(milliseconds: 50),
//                                   ),
//                                   TyperAnimatedText(
//                                     ' A friend 😊',
//                                     textStyle: GoogleFonts.montserrat(
//                                       textStyle: animatedtextstyle,
//                                     ),
//                                     speed: const Duration(milliseconds: 50),
//                                   ),
//                                 ],
//                                 repeatForever: true,
//                                 isRepeatingAnimation: true,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/photos/adeeb_bw.png',
//                             // width: 310,
//                             height: 500,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 70),
//             ],
//           );

//         }
//       },
//     );
//   }
// }

class AboutMeSection extends StatelessWidget {
  AboutMeSection({
    super.key,
  });
  List<personalDataModel> personaldata = [
    personalDataModel(content: 'Adeeb Abubacker', heading: 'Name: '),
    personalDataModel(content: 'adeebabu655@gmail.com', heading: 'Email: '),
    personalDataModel(content: '24', heading: 'Age: '),
    personalDataModel(content: 'Ernakulam, Kerala', heading: 'From: '),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Center(
          child: Text(
            'About Me',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(textStyle: aboutmeheadingstyle),
          ),
        ),
        Center(
          child: Text(
            'Get to know me :)',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/photos/adeeb_bw.png',
                    // width: 310,
                    height: 500,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who am I ?',
                    style: GoogleFonts.montserrat(textStyle: whoamistyle),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "I'm Adeeb Abubacker, a Flutter developer and avid enthusiast of UI design and programming.",
                    style: GoogleFonts.montserrat(textStyle: aboutmeintrostyle),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Hey there, I'm Adeeb Abubacker, a Flutter Developer at Cyberfort Technologies. My journey in software development began in 2022 when I joined Ingrem India Pvt Ltd as an e-learning developer, where I honed my skills in creating engaging digital educational experiences. Since then, I've transitioned into the realm of mobile app development, currently serving as a Flutter Developer at Cyberfort Technologies since May 2023. With a passion for innovation and a knack for crafting seamless user experiences, I'm excited to collaborate and bring creative ideas to life. Let's build something extraordinary together!",
                    style: GoogleFonts.montserrat(textStyle: aboutmestyle),
                  ),
                  const SizedBox(height: 20),
                  const HorizontalLine(),
                  SizedBox(height: 20),
                  Text(
                    "Technologiees I have worked with:",
                    style: GoogleFonts.montserrat(textStyle: techiworkwebstyle),
                  ),
                  SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(
                        Icons.arrow_right_outlined,
                        color: Color.fromARGB(255, 172, 38, 29),
                        size: 30,
                      ),
                      Text('Flutter'),
                      Icon(
                        Icons.arrow_right_outlined,
                        color: Color.fromARGB(255, 172, 38, 29),
                        size: 30,
                      ),
                      Text('React'),
                      Icon(
                        Icons.arrow_right_outlined,
                        color: Color.fromARGB(255, 172, 38, 29),
                        size: 30,
                      ),
                      Text('Node Js'),
                    ],
                  ),
                  SizedBox(height: 20),
                  const HorizontalLine(),
                  SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4, // Change this to your actual item count
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 2 / 0.2),
                    itemBuilder: (BuildContext context, int index) {
                      return Align(
                        alignment: Alignment.topLeft,
                        child: PersonalInfo(
                          heading: personaldata[index].heading,
                          content: personaldata[index].content,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
          ],
        ),

        SizedBox(height: 20),

        const SizedBox(height: 20),

        const SizedBox(height: 20),

        // const Center(child: Text('Email : adeebabu655@gmail.com')),
      ],
    );
  }
}

class PersonalInfo extends StatelessWidget {
  final String heading;
  final String content;
  const PersonalInfo({
    super.key,
    required this.heading,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: heading,
            style: GoogleFonts.montserrat(textStyle: techiworkcontentstyle),
          ),
          TextSpan(
            text: content,
            style: GoogleFonts.montserrat(),
          ),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'assets/services/app.png',
  'assets/services/blog.png',
  'assets/services/rapid.png',
  'assets/services/ui.png',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        width: 390, // Adjusted width
        height: 50, // Adjusted height
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(6))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item, fit: BoxFit.cover, width: 80.0),
            SizedBox(height: 2),
            Text('Mobile App Development')
          ],
        ),
      ),
    )
    .toList();

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 234, 181, 178)),
              tapTargetSize: MaterialTapTargetSize
                  .shrinkWrap, // Disable splash effect on tap
            ),
            onPressed: () {},
            child: Text(
              'Resume',
              style: GoogleFonts.montserrat(textStyle: resumestyle),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'What I can do ?',
            style: GoogleFonts.montserrat(textStyle: aboutmeheadingstyle),
          ),
          const SizedBox(height: 10),
          Text(
            "I may not be perfect but surely I'm of some use",
            style: GoogleFonts.montserrat(textStyle: carouselsubheadingstyle),
          ),
          const SizedBox(height: 50),
          MyServices(),
        ],
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text(
          'Portfolio',
          style: GoogleFonts.montserrat(textStyle: aboutmeheadingstyle),
        ),
        Text(
          "Here are few samples of my previous work",
          style: GoogleFonts.montserrat(textStyle: carouselsubheadingstyle),
        ),
        SizedBox(height: 50),
        ProjectService(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text(
          'Get in Touch',
          style: GoogleFonts.montserrat(textStyle: aboutmeheadingstyle),
        ),
        Text(
          "Let's build something together",
          style: GoogleFonts.montserrat(textStyle: carouselsubheadingstyle),
        ),
        SizedBox(height: 50),
        ContactService(),
        SizedBox(height: 20),
      ],
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.9,
      height: 1,
      color: Colors.black,
    );
  }
}

class _ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const _ServiceCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {},
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
        },
        child: Container(
          width: 100,
          height: 40,
          color: Colors.red,
        ));
  }
}

class personalDataModel {
  final String heading;
  final String content;
  personalDataModel({this.heading = '', this.content = ''});
}
