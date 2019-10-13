import 'package:flutter/material.dart';

class AboutCreator extends StatefulWidget {
  @override
  _AboutCreatorState createState() => _AboutCreatorState();
}

class _AboutCreatorState extends State<AboutCreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('About Me'),
        backgroundColor: Colors.grey,

      ),
    );
  }
}
