
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class ModesInfoPage extends StatefulWidget {
  ModesInfoPage({Key? key}) : super(key: key);

  @override
  _ModesInfoPageState createState() => _ModesInfoPageState();
}

class _ModesInfoPageState extends State<ModesInfoPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return buildAppBar(
        context,
        'The WOVEN Modes',
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
            child: ListView(
              primary: true,
              physics: BouncingScrollPhysics(),
              children: [
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: RichText(
                          text: TextSpan(
                              text: 'Written\n',
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.deepOrangeAccent),
                              children: [
                            TextSpan(
                              text:
                                  "The written mode includes anything written. Its affordances include...\n",
                              style: GoogleFonts.lato(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                color: Colors.black
                              ),
                            ),
                            TextSpan(
                                text: '\t• Leaves room for interpretation\n'
                                    '\t• Allows for manipulation in structure \t(poems vs. short story vs. book)\n',
                                style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey))
                          ]))),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  /// opens detailed view on tap
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: RichText(
                          text: TextSpan(
                              text: 'Oral\n',
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.deepOrangeAccent),
                              children: [
                            TextSpan(
                              text:
                                  "The oral mode includes anything meant to be heard. Its affordances include...\n",
                              style: GoogleFonts.lato(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                                text:
                                    '\t• Tone and inflection can add depth to a piece\n'
                                    '\t• Enables the creator to manipulate the pacing\n',
                                style: GoogleFonts.lato(
                                    fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                ))
                          ]))),
                ),
              ],
            )),
          ],
        ));
  }
}
