import 'package:flutter/material.dart';

import 'package:cinemapedia/config/router/app_rauter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:cinemapedia/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  runApp(const ProviderScope(
      child:
          MainApp())); //cuando se trabaja con provider se necesita agregar acá.
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
