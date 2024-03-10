import 'dart:async';

import 'package:adeeb_portfolio/core/colors.dart';
import 'package:adeeb_portfolio/core/constant_web.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactService extends StatelessWidget {
  const ContactService({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        
        if (constraints.maxWidth > 1259) {
          // For web view
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactCard(
                      width: 390,
                      height: 260,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            'Ernakulam, Kerala',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                  SizedBox(width: 20),
                  ContactCard(
                      width: 390,
                      height: 260,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Phone',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            '+91 8848055651',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                  SizedBox(width: 20),
                  ContactCard(
                      width: 390,
                      height: 260,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Email',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            'adeebabu655@gmail.com',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          );
        } else if (constraints.maxWidth > 987) {
          // For mobile view
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactCard(
                      width: 300,
                      height: 200,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            'Ernakulam, Kerala',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                  SizedBox(width: 20),
                  ContactCard(
                      width: 300,
                      height: 200,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Phone',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            '+91 8848055651',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                  SizedBox(width: 20),
                  ContactCard(
                      width: 300,
                      height: 200,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Email',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            'adeebabu655@gmail.com',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactCard(
                      width: 300,
                      height: 200,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            'Ernakulam, Kerala',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                  SizedBox(width: 20),
                  ContactCard(
                      width: 300,
                      height: 200,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Phone',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            '+91 8848055651',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                ],
              ),
              Row(
                children: [
                  ContactCard(
                      width: 300,
                      height: 200,
                      frontdata: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            color: redcolor,
                            size: 70,
                          ),
                          Text(
                            'Email',
                            style: GoogleFonts.montserrat(
                                textStyle: contactHstyle),
                          ),
                          Text(
                            'adeebabu655@gmail.com',
                            style: GoogleFonts.montserrat(
                                textStyle: contactsubHstyle),
                          ),
                        ],
                      )),
                ],
              )
            ],
          );
        }
      },
    );
  }
}

class ContactCard extends StatefulWidget {
  final width;
  final height;
  final Widget frontdata;

  const ContactCard({
    super.key,
    required this.frontdata,
    required this.width,
    required this.height,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
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
        child: Container(
          width: widget.width,
          height: widget.height,
          // width: 390,
          // height: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: shadowColor1 ?? Colors.grey,
                blurRadius: 4,
                offset: const Offset(-1, 2),
              ),
            ],
          ),
          child: widget.frontdata,
        ),
      ),
    );
  }
}
