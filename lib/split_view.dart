import 'package:flutter/material.dart';

import 'app_menu.dart';
import 'first_page.dart';

class SplitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 600.0;

    if (screenWidth >= breakpoint) {
      return Row(
        children: [
          SizedBox(
            width: 240,
            child: AppMenu(),
          ),
          Container(width: 0.5, color: Colors.black),
          Expanded(
            child: FirstPage(),
          ),
        ],
      );
    } else {
      return Scaffold(
        body: FirstPage(),
        drawer: SizedBox(
          width: 240,
          child: Drawer(
            child: AppMenu(),
          ),
        ),
      );
    }
  }
}
