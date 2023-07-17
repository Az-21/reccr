import 'package:flutter/material.dart';

class M3AppBar extends StatelessWidget {
  const M3AppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: Text(title),
      actions: const [],
    );
  }
}
