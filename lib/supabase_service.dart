
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  SupabaseService._();

  static SupabaseClient get client {
    return Supabase.instance.client;
  }

  static const String projectUrl =
      String.fromEnvironment('https://angemahhglfbsafztwsy.supabase.co');

  static const String publishableKey =
      String.fromEnvironment('sb_publishable_zPOXiTc79OiBtKS1a75viA_sCdAVAm0');

  static bool get isConfigured {
    return projectUrl.startsWith('https://') &&
        publishableKey.isNotEmpty;
  }

  static Future<void> initialize() async {
    if (!isConfigured) {
      throw Exception(
        'Supabase configuration is missing.',
      );
    }

    await Supabase.initialize(
      url: projectUrl,
      publishableKey: publishableKey,
    );
  }
}
