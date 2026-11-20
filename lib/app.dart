
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'screens/home_screen.dart';
import 'screens/setup_error_screen.dart';
import 'theme/app_theme.dart';

class MinecraftModsApp extends StatelessWidget {
  final String? initializationError;

  const MinecraftModsApp({
    super.key,
    this.initializationError,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Minecraft Mods',

      locale: const Locale('ar'),

      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: AppTheme.darkTheme,

      themeMode: ThemeMode.dark,

      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child ?? const SizedBox.shrink(),
        );
      },

      home: initializationError == null
          ? const HomeScreen()
          : SetupErrorScreen(
              error: initializationError!,
            ),
    );
  }
}
