import 'package:flutter/material.dart';
import 'package:sample_app/components/panel.dart';

class AllPanelPage extends StatefulWidget {
  AllPanelPage({Key? key}) : super(key: key);

  @override
  _AllPanelPageState createState() => _AllPanelPageState();
}

class _AllPanelPageState extends State<AllPanelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Text(
                'ナビゲーション',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            ...List.generate(
              9,
              (index) => Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Panel(text: 'test1'),
                    Panel(text: 'test2'),
                    Panel(text: 'test3'),
                    Panel(text: 'test4'),
                    Panel(text: 'test5'),
                    Panel(text: 'test6'),
                    Panel(text: 'test7'),
                    Panel(text: 'test8'),
                    Panel(text: 'test9'),
                  ],
                ),
              ),
            ),
          ],
        )

        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _pageIndex,
        //   onTap: (selectedIndex) {
        //     setState(() {
        //       _pageIndex = selectedIndex;
        //     });
        //   },
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: const Icon(Icons.photo_library),
        //       label: localizations.demoFadeThroughAlbumsDestination,
        //     ),
        //     BottomNavigationBarItem(
        //       icon: const Icon(Icons.photo),
        //       label: localizations.demoFadeThroughPhotosDestination,
        //     ),
        //     BottomNavigationBarItem(
        //       icon: const Icon(Icons.search),
        //       label: localizations.demoFadeThroughSearchDestination,
        //     ),
        //   ],
        // ),
        );
  }
}
