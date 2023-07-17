import 'package:flutter/material.dart';
import 'package:reccr/components/drawer.dart';

final class Device {
  String name;
  IconData icon;
  PageEnum id;
  Device(this.name, this.icon, this.id);
}

final Device android = Device("Android Apps", Icons.android, PageEnum.android);
final Device windows = Device("Windows Apps", Icons.window, PageEnum.windows);
final Device browser = Device("Browser Extensions", Icons.extension_rounded, PageEnum.browser);
final List<Device> devices = [android, windows, browser];
