import 'package:flutter/material.dart';

import 'first_page.dart';
import 'page_tile.dart';
import 'second_page.dart';

final _availablePages = <String, WidgetBuilder>{
  'First Page': (_) => FirstPage(),
  'Second Page': (_) => SecondPage(),
};

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: ListView(
        children: <Widget>[
          for (var pageName in _availablePages.keys)
            PageTile(
              pageName: pageName,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: _availablePages[pageName]!),
                );
              },
            )
        ],
      ),
    );
  }
}
