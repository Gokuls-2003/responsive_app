import 'package:flutter/material.dart';
import 'package:responsive/first_page.dart';
import 'package:responsive/page_tile.dart';
import 'package:responsive/second_page.dart';

final _availabelPages = <String, WidgetBuilder>{
  'First page': (_) => FirstPage(),
  'Second page': (_) => SecondPage(),
};

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: ListView(
        children: <Widget>[
          for (var pageName in _availabelPages.keys)
            PageTile(pageName: pageName)
        ],
      ),
    );
  }
}
