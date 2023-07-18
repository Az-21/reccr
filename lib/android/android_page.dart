import 'package:flutter/material.dart';
import 'package:reccr/components/appbar.dart';
import 'package:reccr/components/drawer.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      drawer: const M3Drawer(id: PageEnum.android),
      body: CustomScrollView(
        slivers: [
          const M3AppBar(title: "Android Apps"),
        ],
      ),
    );
  }
}
