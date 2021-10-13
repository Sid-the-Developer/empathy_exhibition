import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:empathy_exhibition/Themes.dart';
import 'package:empathy_exhibition/Modes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key, required this.theme, required this.mode})
      : super(key: key);

  final Themes theme;
  final Modes mode;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return buildAppBar(context, '${widget.theme.name} in the ${widget.mode.name} mode',
        ListView(
          children: _buildList(widget.theme, widget.mode),
        )
    );
  }

  List<Widget> _buildList(Themes theme, Modes mode) {
    switch (theme) {
      case Themes.empathy:
        return _buildEmpathy(mode);
      case Themes.intersectionality:
        return _buildIntersectionality(mode);
      case Themes.respect:
        return _buildRespect(mode);
    }
  }

  List<Widget> _buildIntersectionality(Modes mode) {
    switch (mode) {
      case Modes.written:
        return [];
      case Modes.oral:
        return [];
      case Modes.visual:
        return [];
      case Modes.electronic:
        return [_buildCard(title: 'The Urgency of Intersectionality', author: 'Kimberlé Crenshaw', blurb: 'A great starting video to understanding intersectionality. '
            'Kimberlé Crenshaw delivers anecdotes and uses her tone to engage the audience.', link: 'https://www.youtube.com/watch?v=akOe5-UsQ2o', imagePath: 'images/kimberle.png'),
        ];
      case Modes.nonverbal:
        return [];
    }
  }

  List<Widget> _buildEmpathy(Modes mode) {
    switch (mode) {
      case Modes.written:
        return [];
      case Modes.oral:
        return [];
      case Modes.visual:
        return [];
      case Modes.electronic:
        return [];
      case Modes.nonverbal:
        return [];
    }
  }

  List<Widget> _buildRespect(Modes mode) {
    switch (mode) {
      case Modes.written:
        return [];
      case Modes.oral:
        return [];
      case Modes.visual:
        return [];
      case Modes.electronic:
        return [];
      case Modes.nonverbal:
        return [];
    }
  }

  Widget _buildCard({required String title, String author = '', String blurb = '', String link = '', String imagePath = ''}) {
    return InkWell(
      onTap: () => launch(link),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
               FittedBox(
                 fit: BoxFit.fitWidth,
                 child: Row(
                   children: [link == '' ? Container() : Icon(Icons.touch_app_outlined, size: 30,),
                     FittedBox(
                       fit: BoxFit.fitWidth,
                       child: Text('$title',
                                style: GoogleFonts.merriweather(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                    color: Colors.deepOrangeAccent),),
                     ),
                   ],
                 ),
               ),
                Text("$author",
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                color: Colors.grey
                            ),
                          ),
                imagePath == '' ? Container(): Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: ClipRRect(child: Image.asset(imagePath),
                    borderRadius: BorderRadius.circular(20),),
                ),
          Text(blurb,
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
              ],
            )),
      ),
    );
  }
}