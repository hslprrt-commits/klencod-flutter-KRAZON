
import 'package:flutter/material.dart';

import 'app.dart';
import 'services/supabase_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String? initializationError;

  try {
    await SupabaseService.initialize();
  } catch (error) {
    initializationError = error.toString();
  }

  runApp(
    MinecraftModsApp(
      initializationError: initializationError,
    ),
  );
}
