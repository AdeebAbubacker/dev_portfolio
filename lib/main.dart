import 'package:adeeb_portfolio/sections/web/widgets/services/my_servcies.dart';
import 'package:adeeb_portfolio/core/colors.dart';
import 'package:adeeb_portfolio/core/constant_mob.dart';
import 'package:adeeb_portfolio/firebase_options.dart';
import 'package:adeeb_portfolio/sections/web/widgets/nav_bar_button/nav_bar_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:adeeb_portfolio/sections/mobile/screen/mobile_view.dart';
import 'package:adeeb_portfolio/sections/web/screen/web_view.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    void scrollToIndex(double index) {
      _scrollController.animateTo(
        index * MediaQuery.of(context).size.height,
        duration: const Duration(milliseconds: 3000),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      appBar: MediaQuery.of(context).size.width > 1000
          ? PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '< Adeeb Abubacker />',
                          style: GoogleFonts.rockSalt(
                            textStyle:
                                const TextStyle(fontSize: 18), // Example style
                          ),
                        ),
                      ),
                    ),
                    expandedHeight: kToolbarHeight,
                    backgroundColor: Colors.white,
                    elevation: 0.0, // Set elevation to 0.0 to remove shadow
                    flexibleSpace: FlexibleSpaceBar(
                      title: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '< Adeeb Abubacker />',
                            style: GoogleFonts.rockSalt(
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      background: Container(
                        color: Colors.white, // Set the background color here
                      ),
                    ),
                    actions: const [
                      NavBarActionButton(label: 'HOME', index: 1),
                      NavBarActionButton(label: 'ABOUT', index: 1),
                      NavBarActionButton(label: 'SERVICES', index: 1),
                      NavBarActionButton(label: 'PROJECTS', index: 1),
                      NavBarActionButton(label: 'CONTACT', index: 1),
                      NavBarActionButton(label: 'RESUME', index: 1),
                      SizedBox(width: 30),
                    ],
                  ),

                  // Add other slivers as needed
                  // ...
                ],
              ),
            )

          // ? AppBar(
          //     backgroundColor: Colors.white,
          //     elevation: 0.0,
          //     title: Align(
          //       alignment: Alignment.centerLeft,
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           '< Adeeb Abubacker />',
          //           style: GoogleFonts.rockSalt(
          //             textStyle: const TextStyle(fontSize: 18), // Example style
          //           ),
          //         ),
          //       ),
          //     ),
          //     actions: const [
          //       NavBarActionButton(label: 'HOME', index: 1),
          //       NavBarActionButton(label: 'ABOUT', index: 1),
          //       NavBarActionButton(label: 'SERVICES', index: 1),
          //       NavBarActionButton(label: 'PROJECTS', index: 1),
          //       NavBarActionButton(label: 'CONTACT', index: 1),
          //       NavBarActionButton(label: 'RESUME', index: 1),
          //       SizedBox(width: 30),
          //     ],
          //   )
          : AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    '< Adeeb Abubacker />',
                    style: GoogleFonts.rockSalt(
                      textStyle: signaturestyle,
                    ),
                  ),
                )
              ],
            ), // Show drawer for mobile view

      drawer: MediaQuery.of(context).size.width < 1000
          ? Drawer(
              child: DrawerContents(scrollToIndex: scrollToIndex),
            )
          : null, // Show drawer for mobile view
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1000) {
            // For web view
            return WebView(scrollController: _scrollController);
          } else {
            // For mobile view
            return MobileView(scrollController: _scrollController);
          }
        },
      ),
    );
  }
}

class DrawerContents extends StatefulWidget {
  final Function(double) scrollToIndex;
  const DrawerContents({
    required this.scrollToIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerContents> createState() => _DrawerContentsState();
}

class _DrawerContentsState extends State<DrawerContents> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Text(
          '<Adeeb Abubacker />',
          style: GoogleFonts.rockSalt(
            textStyle: signaturestyle,
          ),
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  DrawerButton(
                      buttonicon: Icon(Icons.home, color: redcolor),
                      onPressed: () {
                        widget.scrollToIndex(0);
                        Navigator.pop(context);
                      },
                      buttonText: 'HOME'),
                  const SizedBox(height: 10),
                  DrawerButton(
                      buttonicon: Icon(
                        Icons.person,
                        color: redcolor,
                      ),
                      onPressed: () {
                        widget.scrollToIndex(0.7);
                        Navigator.pop(context);
                      },
                      buttonText: 'ABOUT'),
                  const SizedBox(height: 10),
                  DrawerButton(
                      buttonicon: Icon(Icons.work, color: redcolor),
                      onPressed: () {
                        widget.scrollToIndex(2);
                        Navigator.pop(context);
                      },
                      buttonText: 'SERVICES'),
                  const SizedBox(height: 10),
                  DrawerButton(
                      buttonicon: Icon(Icons.build, color: redcolor),
                      onPressed: () {
                        widget.scrollToIndex(2.5);
                        Navigator.pop(context);
                      },
                      buttonText: 'PROJECTS'),
                  const SizedBox(height: 10),
                  DrawerButton(
                      buttonicon: Icon(Icons.settings, color: redcolor),
                      onPressed: () {
                        widget.scrollToIndex(3.2);
                        Navigator.pop(context);
                      },
                      buttonText: 'CONTACT'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DrawerButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Icon buttonicon;

  const DrawerButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.buttonicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
                if (states.contains(MaterialState.hovered)) {
                  return const Color.fromARGB(
                      255, 243, 213, 213); // Color when hovered
                }
                return Colors.transparent; // Color when not hovered
              },
            ),
            elevation: MaterialStateProperty.all<double>(0), // No elevation
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.zero), // No padding
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // No rounded corners
                side: BorderSide.none, // No border
              ),
            ),
          ),
          child: SizedBox(
            height: 40,
            width: 280,
            child: Row(
              children: [
                const SizedBox(width: 10),
                buttonicon,
                const SizedBox(width: 10),
                Text(
                  buttonText,
                  style: GoogleFonts.montserrat(textStyle: drawerbuttonstyle),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
