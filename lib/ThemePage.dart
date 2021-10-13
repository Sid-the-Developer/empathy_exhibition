import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Modes.dart';

class ThemePage extends StatefulWidget {
  ThemePage({Key? key, required this.mode}) : super(key: key);

  // Selected theme
  final Modes mode;

  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return buildAppBar(context, 'The Themes',
        ListView(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              elevation: .5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 7,
                          child: Text(
                            'Written',
                            style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.deepOrangeAccent),
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                              "The written mode includes anything written. Its affordances include...",
                              style: GoogleFonts.merriweatherSans(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                              ),
                              children: [
                                TextSpan(
                                    text: '• Up for interpretation\n'
                                        '• Allows for manipulation in structure (poems vs. short story vs. book)\n',
                                    style: GoogleFonts.merriweatherSans(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic))
                              ]))
                    ],
                  )),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: .5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,

              /// opens detailed view on tap
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      /// current location and city name header
                      Expanded(
                          flex: 7,
                          child: Text(
                            'Written',
                            style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.deepOrangeAccent),
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                              "The written mode includes anything written. Its affordances include...",
                              style: GoogleFonts.merriweatherSans(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                              ),
                              children: [
                                TextSpan(
                                    text: '• Up for interpretation\n'
                                        '• Allows for manipulation in structure (poems vs. short story vs. book)\n',
                                    style: GoogleFonts.merriweatherSans(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic))
                              ]))
                    ],
                  )),
            ),
          ],
        )
    );
  }
}