import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reccr/components/drawer.dart';
import 'package:reccr/components/function.dart';

class DeviceSelectionCard extends StatelessWidget {
  const DeviceSelectionCard({super.key, required this.icon, required this.heading, required this.id});
  final String heading;
  final IconData icon;
  final PageEnum id;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onTap: () {
          final String destination = generateDestinationRoute(id);
          Scaffold.of(context).closeDrawer();
          context.go(destination);
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: Row(children: [
            _Heading(icon: icon, heading: heading),
          ]),
        ),
      ),
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading({required this.heading, required this.icon});
  final String heading;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 32),
        Text(heading, style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
