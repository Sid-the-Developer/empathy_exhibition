import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemePage extends StatefulWidget {
  ThemePage({Key? key}) : super(key: key);

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
        Column(
          mainAxisSize: MainAxisSize.min,
    children: [Expanded(
          child: ListView(
            primary: true,
            physics: BouncingScrollPhysics(),
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
                    child: RichText(
                        text: TextSpan(
                            text: 'Empathy\n',
                            style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.deepOrangeAccent),
                            children: [
                              TextSpan(
                                text:
                                'The ability to understand someone and "step into their shoes."\n',
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                    color: Colors.grey
                                ),
                              ),
                              TextSpan(
                                  text: 'Empathy is crucial to human connection. By communicating, no matter which mode, '
                                      'we can empathize with people. With a sense of unity and inclusion, communities thrive.',
                                  style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black))
                            ]))),
              ),
              Card(
                margin: EdgeInsets.all(10),
                elevation: .5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: RichText(
                        text: TextSpan(
                            text: 'Intersectionality\n',
                            style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.deepOrangeAccent),
                            children: [
                              TextSpan(
                                text:
                                "The interconnectedness of multiple identities forming a unique perspective and life experience.\n",
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                    color: Colors.grey
                                ),
                              ),
                              TextSpan(
                                  text: 'Understanding intersectionality is a step toward empathy. The social labels/identities '
                                      'each person carries effect the way they see life. By interacting with artifacts about unique people, '
                                      'we can educate ourselves in order to be sensitive to experiences with which we are unfamiliar.',
                                  style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black))
                            ]))),
              ),
              Card(
                margin: EdgeInsets.all(10),
                elevation: .5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: RichText(
                        text: TextSpan(
                            text: 'Resilience\n',
                            style: GoogleFonts.merriweather(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.deepOrangeAccent),
                            children: [
                              TextSpan(
                                text:
                                "The ability to get up as strong if not stronger after facing adversities.\n",
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 18,
                                    color: Colors.grey
                                ),
                              ),
                              TextSpan(
                                  text: 'Resilience is a quality often found in underrepresented groups. '
                                      'However it comes in a wide range of forms. As a theme, resilience is empowering. '
                                      'By interacting with artifacts about resilience, we can learn to recognize and celebrate '
                                      'resilience in all communities.',
                                  style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black))
                            ]))),
              ),
            ],
          ),
        )])
    );
  }
}