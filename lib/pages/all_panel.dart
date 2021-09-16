import 'package:flutter/material.dart';
import 'package:sample_app/components/panel.dart';

import '../utils.dart';

class AllPanelPage extends StatefulWidget {
  final String title;
  const AllPanelPage({Key? key, required this.title}) : super(key: key);

  @override
  _AllPanelPageState createState() => _AllPanelPageState();
}

class _AllPanelPageState extends State<AllPanelPage> {
  static const countMatrix = 3;
  late List<List<Panel>> matrix;

  @override
  void initState() {
    super.initState();

    setPanels();
  }

  void setPanels() => setState(() => matrix = List.generate(
        countMatrix,
        (_) => List.generate(countMatrix, (_) => Panel()),
      ));

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: Utils.modelBuilder(matrix, (x, value) => buildRow(x)),
      ));

  Widget buildRow(int x) {
    final values = matrix[x];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Utils.modelBuilder(
        values,
        (y, value) => buildField(x, y),
      ),
    );
  }

  Widget buildField(int x, int y) {
    final panel = matrix[x][y];
    return panel.build(context, x, y);
  }
}
