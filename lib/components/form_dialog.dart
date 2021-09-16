import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late String text;

class FormDialog {
  static show(context, x, y) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: "ここに入力"),
                onChanged: (String editedText) {
                  text = editedText;
                }),
            actions: <Widget>[
              // ignore: deprecated_member_use
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('キャンセル'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.blue,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () async {
                  await _saveText(x, y);
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
  }

  static _saveText(x, y) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final key = '$x,$y';
    await prefs.setString(key, text);
  }
}
