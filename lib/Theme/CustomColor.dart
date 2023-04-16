import 'package:flutter/material.dart';

MaterialColor myCustomColor = MaterialColor(
  0xFF123456, // Replace with your desired primary color value
  <int, Color>{
    50: Color(0xFF123456).withOpacity(0.1),
    100: Color(0xFF123456).withOpacity(0.2),
    200: Color(0xFF123456).withOpacity(0.3),
    300: Color(0xFF123456).withOpacity(0.4),
    400: Color(0xFF123456).withOpacity(0.5),
    500: Color(0xFF123456).withOpacity(0.6),
    600: Color(0xFF123456).withOpacity(0.7),
    700: Color(0xFF123456).withOpacity(0.8),
    800: Color(0xFF123456).withOpacity(0.9),
    900: Color(0xFF123456),
  },
);

ColorScheme myCustomColorScheme = ColorScheme(
  primary: myCustomColor,
  primaryContainer: myCustomColor[700],
  secondary: Colors.green,
  secondaryContainer: Colors.green[700],
  background: Colors.white,
  surface: Colors.white,
  onBackground: Colors.black,
  onSurface: Colors.black,
  onError: Color.fromARGB(255, 255, 0, 0),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  brightness: Brightness.light,
  error: Colors.red,
);
