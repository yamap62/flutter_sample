import 'package:flutter/material.dart';
import 'package:sample_app/components/panel.dart';

class PartPanelPage extends StatefulWidget {
  PartPanelPage({Key? key, required this.location}) : super(key: key);
  final String location;
  @override
  _PartPanelPageState createState() => _PartPanelPageState();
}

class _PartPanelPageState extends State<PartPanelPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          3,
          (index) => Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Panel(text: 'test'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
