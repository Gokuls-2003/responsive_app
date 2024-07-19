import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  const PageTile({
    super.key,
    this.selectedPageName,
    required this.pageName,
    this.onPressed,
  });

  final String? selectedPageName;
  final String pageName;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Opacity(
        opacity: selectedPageName == pageName ? 1.0 : 0.0,
        child: Icon(Icons.check),
      ),
      title: Text(pageName),
      onTap: onPressed,
    );
  }
}
