import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/pages/all_panel.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  static const String title = 'Mandala Chart';

  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const AllPanelPage(title: title),
    );
  }
}
