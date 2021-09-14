import 'package:flutter/material.dart';

class FormDialog {
  static show(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: "ここに入力"),
            ),
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
                onPressed: () {},
                child: const Text('OK'),
              ),
            ],
          );
        });
  }
}
