import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff5630ff, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{






      50: const Color(0xff9781f5),//10%
      100: const Color(0xff9387ff),//20%
      200: const Color(0xff6435c1),//30%
      300: const Color(0xff382b89),//40%
      400: const Color(0xff2c2473),//50%
      500: const Color(0xff231d5c),//60%
      600: const Color(0xff1c1645),//70%
      700: const Color(0xff120e2e),//80%
      800: const Color(0xff170907),//90%
      900: const Color(0xff000000),//100%
    },
  );
} //