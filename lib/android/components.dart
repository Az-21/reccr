import 'package:flutter/material.dart';
import 'package:reccr/android/model.dart';

class AndroidAppCard extends StatelessWidget {
  const AndroidAppCard({
    super.key,
    required this.name,
    required this.description,
    required this.icon,
    required this.monetization,
    required this.link,
  });

  final String description;
  final String icon;
  final String link;
  final MonetizationEnum monetization;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
