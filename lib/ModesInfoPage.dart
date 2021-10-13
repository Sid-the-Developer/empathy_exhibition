
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
                                  "The written mode uses alphanumeric characters to create artifacts. Its affordances include...\n",
                              style: GoogleFonts.lato(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                color: Colors.black
                              ),
                            ),
                            TextSpan(
                                text: '\t• Usually leaves room for interpretation\n'
                                    '\t• Allows for manipulation in structure (poems vs. short story vs. book)\n'
                                    '\t• Engages the reader through literary devices and stimulating imagination',
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
                                  "The oral mode uses spoken language to create artifacts. Its affordances include...\n",
                              style: GoogleFonts.lato(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                                text:
                                    '\t• Adds depth to a piece through tone and inflection\n'
                                    '\t• Enables the creator to manipulate the pacing of how they speak\n'
                                        "\t• Forces the speaker to consider the dialect of their delivery and how it affects the audience's view",
                                style: GoogleFonts.lato(
                                    fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                ))
                          ]))),
                ),
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
                              text: 'Visual\n',
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.deepOrangeAccent),
                              children: [
                                TextSpan(
                                  text:
                                  "The visual mode uses images to create artifacts. Its affordances include...\n",
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                    '\t• Yields immediate in interpretation compared to reading a book\n'
                                        '\t• Able to evoke emotion through color\n'
                                        "\t• Increases relatability by directly appealing to sight",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                    ))
                              ]))),
                ),
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
                              text: 'Electronic\n',
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.deepOrangeAccent),
                              children: [
                                TextSpan(
                                  text:
                                  "The electronic mode uses technology/digital tools to create artifacts. Its affordances include...\n",
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                    '\t• Widely accessible\n'
                                        '\t• Easily transferred\n'
                                        "\t• Can combine its affordances with other modes such as an PPT (written, visual, oral)",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                    ))
                              ]))),
                ),
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
                              text: 'Nonverbal\n',
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.deepOrangeAccent),
                              children: [
                                TextSpan(
                                  text:
                                  "The nonverbal mode uses nonverbal cues (body language, tone, clothing, etc.) to create artifacts. Its affordances include...\n",
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                    '\t• Conveys meaning through universal nonverbal "language"\n'
                                        '\t• Adds levels of complexity because different cultures can interpret cues differently\n'
                                        "\t• Combines well with other modes instead of standing alone",
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
