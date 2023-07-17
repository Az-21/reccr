import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reccr/components/function.dart';

enum PageEnum {
  home,
  android,
  windows,
  browser,
}

class M3Drawer extends StatelessWidget {
  const M3Drawer({super.key, required this.id});
  final PageEnum id;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(8, 128, 8, 0),
        children: [
          _NavigationItem(title: "Home", icon: Icons.home_rounded, pageId: PageEnum.home, id: id),
          _NavigationItem(title: "Android Apps", icon: Icons.android, pageId: PageEnum.android, id: id),
          _NavigationItem(title: "Windows Apps", icon: Icons.window, pageId: PageEnum.android, id: id),
        ],
      ),
    );
  }
}

class _NavigationItem extends StatelessWidget {
  const _NavigationItem({required this.icon, required this.title, required this.pageId, required this.id});
  final String title;
  final IconData icon;
  final PageEnum pageId;
  final PageEnum id;

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        minVerticalPadding: 24,
        tileColor: pageId == id ? color.surfaceVariant : color.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
        onTap: () {
          final String destination = generateDestinationRoute(pageId);
          Scaffold.of(context).closeDrawer();
          context.go(destination);
        },
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }
}