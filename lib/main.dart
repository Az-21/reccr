import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

const _fallbackColor = Color(0xFF386A20);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightColorScheme;
        ColorScheme darkColorScheme;

        if (lightDynamic != null && darkDynamic != null) {
          // Android 12+
          lightColorScheme = lightDynamic.harmonized();
          darkColorScheme = darkDynamic.harmonized();
        } else {
          // Otherwise, use fallback schemes.
          lightColorScheme = ColorScheme.fromSeed(
            seedColor: _fallbackColor,
          );
          darkColorScheme = ColorScheme.fromSeed(
            seedColor: _fallbackColor,
            brightness: Brightness.dark,
          );
        }

        return MaterialApp.router(
          title: 'Reccr',
          theme: ThemeData(colorScheme: lightColorScheme, useMaterial3: true),
          darkTheme: ThemeData(colorScheme: darkColorScheme, useMaterial3: true),
          routerConfig: router,
        );
      },
    );
  }
}
