import 'package:adeeb_portfolio/core/colors.dart';
import 'package:adeeb_portfolio/core/constant_mob.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<PortFolioModel> portfolioList = [
  PortFolioModel(
      iconData: Icon(
        Icons.home,
        color: redcolor,
        size: 50,
      ),
      contactitle: 'Awesome Snackbar',
      contacdata: 'package'),
  PortFolioModel(
      iconData: Icon(
        Icons.call,
        color: redcolor,
        size: 50,
      ),
      contactitle: 'Med Ui',
      contacdata: 'Medical App'),
  PortFolioModel(
      iconData: Icon(
        Icons.mail,
        color: redcolor,
        size: 50,
      ),
      contactitle: 'Faazmi',
      contacdata: 'Retail App'),
];

final List<Widget> potfolioSliders = portfolioList
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
            item.iconData,
            SizedBox(height: 2),
            Text(
              item.contactitle,
              style: GoogleFonts.montserrat(textStyle: contactusheadingstyle),
            ),
            Text(
              item.contacdata,
              style:
                  GoogleFonts.montserrat(textStyle: contactussubheadingstyle),
            ),
          ],
        ),
      ),
    )
    .toList();

class PortFolioModel {
  final Icon iconData;
  final String contactitle;
  final String contacdata;

  PortFolioModel(
      {this.iconData = const Icon(Icons.person),
      this.contactitle = '',
      this.contacdata = ''});
}
