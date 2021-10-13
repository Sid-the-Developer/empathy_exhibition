import 'package:flutter/material.dart';
import 'Themes.dart';

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
    return Scaffold();
  }
}