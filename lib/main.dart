import 'package:flutter/material.dart';
import 'package:sample_app/pages/all_panel.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mandala Chart',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AllPanelPage(),
    );
  }
}
