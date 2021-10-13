import 'package:flutter/material.dart';
import 'InfoPage.dart';
import 'Themes.dart';
import 'main.dart';
import 'Modes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';

class ModePage extends StatefulWidget {
  ModePage({Key? key, required this.theme}) : super(key: key);

  // Selected theme
  final Themes theme;

  @override
  _ModePageState createState() => _ModePageState();
}

class _ModePageState extends State<ModePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return buildAppBar(context, 'Modes', Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('Now, select a mode',
                style: GoogleFonts.merriweatherSans(fontSize: 18),),
            ),
            Container(
              height: 500,
              child: Stack(
                children: [Positioned(
                  bottom: 290,
                  left: 115,
                  child: OutlinedButton(
                    child: Text('WRITTEN',
                        style: GoogleFonts.merriweather(
                            fontWeight: FontWeight.bold)),
                    style: OutlinedButton.styleFrom(
                        shape: CircleBorder(),
                        side: BorderSide(color: Colors.deepPurple, width: 5),
                        fixedSize: Size.fromRadius(90)),
                    onPressed: () => Navigator.of(context).push(SharedAxisPageRoute(
                        page: InfoPage(theme: widget.theme, mode: Modes.written),
                        transitionType: SharedAxisTransitionType.horizontal)),
                  ),
                ),
                  Positioned(
                    bottom: 200,
                    right: 10,
                    child: OutlinedButton(
                      child: Text('ORAL',
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          side: BorderSide(color: Colors.deepPurple, width: 5),
                          fixedSize: Size.fromRadius(90)),
                      onPressed: () => Navigator.of(context).push(SharedAxisPageRoute(
                          page: InfoPage(theme: widget.theme, mode: Modes.oral),
                          transitionType: SharedAxisTransitionType.horizontal)),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    right: 50,
                    child: OutlinedButton(
                      child: Text('VISUAL',
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          side: BorderSide(color: Colors.deepPurple, width: 5),
                          fixedSize: Size.fromRadius(90)),
                      onPressed: () => Navigator.of(context).push(SharedAxisPageRoute(
                          page: InfoPage(theme: widget.theme, mode: Modes.visual),
                          transitionType: SharedAxisTransitionType.horizontal)),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    left: 50,
                    child: OutlinedButton(
                      child: Text('ELECTRONIC',
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          side: BorderSide(color: Colors.deepPurple, width: 5),
                          fixedSize: Size.fromRadius(90)),
                      onPressed: () => Navigator.of(context).push(SharedAxisPageRoute(
                          page: InfoPage(theme: widget.theme, mode: Modes.electronic),
                          transitionType: SharedAxisTransitionType.horizontal)),
                    ),
                  ),
                  Positioned(
                    bottom: 200,
                    left: 10,
                    child: OutlinedButton(
                      child: Text('NONVERBAL',
                          style: GoogleFonts.merriweather(
                              fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          side: BorderSide(color: Colors.deepPurple, width: 5),
                          fixedSize: Size.fromRadius(90)),
                      onPressed: () => Navigator.of(context).push(SharedAxisPageRoute(
                          page: InfoPage(theme: widget.theme, mode: Modes.nonverbal),
                          transitionType: SharedAxisTransitionType.horizontal)),
                    ),
                  )],
              ),
            ),
            Spacer()
          ], // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}