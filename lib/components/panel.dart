import 'package:flutter/material.dart';
import 'form_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Panel {
  final double size = 92;
  late bool isMain = false;
  late String text = "";
  Panel({size, isMain, text}) {
    size = size;
    isMain = isMain;
    text = text;
  }

  Widget build(context, x, y) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(size, size),
        ),
        child: FutureBuilder(
          future: _getText(x, y),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data ?? "未入力",
                  style: const TextStyle(fontSize: 32));
            }
          },
        ),
        onPressed: () => _fillOutPanel(context, x, y),
      ),
    );
  }

  Future<String> _getText(x, y) async {
    final key = '$x,$y';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    text = prefs.getString(key) ?? text;
    return text;
  }

  void _fillOutPanel(context, x, y) {
    FormDialog.show(context, x, y);
  }
}
