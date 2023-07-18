import 'package:flutter/material.dart';
import 'package:reccr/components/drawer.dart';

final class Device {
  String name;
  IconData icon;
  PageEnum id;
  Device(this.name, this.icon, this.id);
}

final List<Device> devices = [
  Device("Android Apps", Icons.android, PageEnum.android),
  Device("Windows Apps", Icons.window, PageEnum.windows),
  Device("Browser Extensions", Icons.extension_rounded, PageEnum.browser),
];
