import 'package:flutter/material.dart';
import 'package:reccr/components/appbar.dart';
import 'package:reccr/components/drawer.dart';
import 'package:reccr/home/components.dart';
import 'package:reccr/home/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      drawer: const M3Drawer(id: PageEnum.home),
      body: CustomScrollView(slivers: [
        const M3AppBar(title: "Reccr"),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: devices.length,
            (context, index) => DeviceSelectionCard(
              heading: devices[index].name,
              icon: devices[index].icon,
              id: devices[index].id,
            ),
          ),
        ),
      ]),
    );
  }
}
