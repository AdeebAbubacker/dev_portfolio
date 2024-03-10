import 'package:adeeb_portfolio/core/constant_mob.dart';
import 'package:adeeb_portfolio/core/utils/service_utils.dart';
import 'package:adeeb_portfolio/sections/mobile/widget/contact-us/contact_us_utils.dart';
import 'package:adeeb_portfolio/sections/mobile/widget/portfolio/portfolio_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends StatelessWidget {
  final ScrollController scrollController;

  MobileView({Key? key, required this.scrollController}) : super(key: key);

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
                  SizedBox(height: 40),
                  const HomeSection(),
                  const AboutMeSection(),
                  const ServiceSection(),
                  const ProjectSection(),
                  const ContactSection(),
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
                  const SizedBox(height: 20),
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
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'HEY THERE!',
              style: GoogleFonts.montserrat(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/hi.gif',
              height: 23,
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'ADEEB ABUBACKER',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
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
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  ' UI/UX Enthusiast',
                  textStyle: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
                TyperAnimatedText(
                  ' A friend 😊',
                  textStyle: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  speed: const Duration(milliseconds: 50),
                ),
              ],
              repeatForever: true,
              isRepeatingAnimation: true,
            ),
          ],
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/photos/adeeb_bw.png',
              width: 310,
            ),
          ],
        ),
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
        Center(
          child: CircleAvatar(
            radius: 60,
            child: Image.asset(
              'assets/photos/adeeb_bw.png',
              width: 310,
            ),
          ),
        ),
        SizedBox(height: 20),
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
        const SizedBox(height: 30),
        Center(
          child: Text(
            "Technologiees I have worked with:",
            style: GoogleFonts.montserrat(textStyle: techiworkstyle),
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        const SizedBox(height: 30),
        const HorizontalLine(),
        const SizedBox(height: 20),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Name : ',
                  style:
                      GoogleFonts.montserrat(textStyle: techiworkcontentstyle),
                ),
                TextSpan(
                  text: 'Adeeb Abubacker',
                  style: GoogleFonts.montserrat(),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Email : ',
                  style:
                      GoogleFonts.montserrat(textStyle: techiworkcontentstyle),
                ),
                TextSpan(
                  text: 'adeebabu655@gmail.com',
                  style: GoogleFonts.montserrat(),
                ),
              ],
            ),
          ),
        ),
        // const Center(child: Text('Email : adeebabu655@gmail.com')),
      ],
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
    return Column(
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
        Container(
          width: double.infinity,
          height: 200, // Fixed height for the carousel
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.95,
              autoPlay: true,
              aspectRatio: 1 / 0.5,
              enlargeCenterPage: true,
            ),
            items: imageSliders.map((item) {
              return Container(
                width: 200, // Fixed width for each carousel item
                height: 200 * 0.5, // Fixed height for each carousel item
                child: item,
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
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
        Container(
          width: double.infinity,
          height: 200, // Fixed height for the carousel
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.95,
              autoPlay: true,
              aspectRatio: 1 / 0.5,
              enlargeCenterPage: true,
            ),
            items: potfolioSliders.map((item) {
              return Container(
                width: 400, // Fixed width for each carousel item
                height: 200 * 0.5, // Fixed height for each carousel item
                child: item,
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 20),
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
        Container(
          width: double.infinity,
          height: 200, // Fixed height for the carousel
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.95,
              autoPlay: true,
              aspectRatio: 1 / 0.5,
              enlargeCenterPage: true,
            ),
            items: contactusSliders.map((item) {
              return Container(
                width: 300, // Fixed width for each carousel item
                height: 200 * 0.5, // Fixed height for each carousel item
                child: item,
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

// class ContactSection extends StatelessWidget {
//   const ContactSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {

//     return Column(
//       children: [
//         SizedBox(height: 50),
//         Text(
//           'Get in Touch',
//           style: GoogleFonts.montserrat(textStyle: aboutmeheadingstyle),
//         ),
//         Text(
//           "Let's build something together",
//           style: GoogleFonts.montserrat(textStyle: carouselsubheadingstyle),
//         ),
//         SizedBox(height: 50),
//         Container(
//           child: CarouselSlider(
//             options: CarouselOptions(
//               viewportFraction: 0.95,
//               autoPlay: true,
//               aspectRatio: 1 / 0.5 ,
//               enlargeCenterPage: true,
//             ),
//             items: contactusSliders,
//           ),
//         ),
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }

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
